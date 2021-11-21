Rails.application.routes.draw do
  resources :carts
  resources :products
  get 'admin/dashboard'
  get 'home/index'
  root 'products#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
