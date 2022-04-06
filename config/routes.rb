Rails.application.routes.draw do
  # Products
  resources :products, only: %i[index show]

  # Users
  resources :users, only: :create
  get "/profile", to: "users#show"
  patch "/profile", to: "users#update"

  # Sessions
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
