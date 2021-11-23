Rails.application.routes.draw do
  resources :addresses
  resources :line_items
  resources :carts
  resources :products
  get 'admin/dashboard'
  get 'home/index'
  root 'products#index'
  devise_for :users
  get '/addresses/order_info' => 'addresses#order_info'
  post '/addresses/order_info' => 'addresses#order_info'
  get 'search' => 'products#search'
  post 'search' => 'products#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
