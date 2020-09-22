Rails.application.routes.draw do
  devise_for :users
  # Setting up routes
  root to: 'pooches#index'
  get 'about', to: 'pages#about'
  resources :pooches, except: :index
end
