Rails.application.routes.draw do
  get 'sessions/create'

  # Users
  resources :users, only: :create
  get "/profile", to: "users#show"
  patch "/profile", to: "users#update"

  # Sessions
  post "/login", to: "sessions#create"
end
