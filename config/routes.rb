Rails.application.routes.draw do
  resources :products, :carts
  devise_for :users
  root to: "homes#index"
  get '/addproduct/:id', to: 'carts#addproduct',as:'addproduct' 
  get '/removeproduct/:id', to: 'carts#removeproduct',as:'removeproduct'
end
