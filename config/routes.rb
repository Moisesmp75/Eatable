Rails.application.routes.draw do
  get 'sessions/create'

  # Users
  resources :users, only: :create
  get "/profile", to: "users#show"

  # Sessions
  post "/login", to: "sessions#create"
end
