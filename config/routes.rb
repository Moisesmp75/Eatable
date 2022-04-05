Rails.application.routes.draw do
  get 'sessions/create'

  # Users
  resources :users, only: :create

  # Sessions
  post "/login", to: "sessions#create"
end
