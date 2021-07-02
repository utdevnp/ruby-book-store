Rails.application.routes.draw do
 
  get 'orders/index'
  post 'orders/create'
  get 'order_detail/index'
  post 'order_detail/create'
  get "orders/show"
  resources :order_details
  resources :orders
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
