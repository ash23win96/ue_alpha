Rails.application.routes.draw do
  get 'carts/show'
  devise_for :users
  root 'pages#index'

  resources :products
  resources :categories
  resources :line_items, only: [:create, :destroy]
  resources  :carts, only: [:show]
end
