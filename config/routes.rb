Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'

  resources :products
  resources :categories
end
