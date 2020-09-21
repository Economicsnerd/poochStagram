Rails.application.routes.draw do
  devise_for :users
  # Setting up routes
  root to: 'pooches#index'
  resources :pooches, except: :index
end
