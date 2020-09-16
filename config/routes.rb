Rails.application.routes.draw do
  # Setting up routes
  root to: 'pooches#index'
  resources :pooches, except: :index
end
