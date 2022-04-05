Rails.application.routes.draw do

  # Users
  resources :users, only: :create

end
