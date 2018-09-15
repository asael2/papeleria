Rails.application.routes.draw do
  devise_for :users
  resources :products
  root to: "products#index"

  get '/products', to: 'products#index'

  get '/products/new', to: 'products#new'
  
  post '/products', to: 'products#create'

  get '/product/:id', to: 'products#show'

  get '/products/:id/edit', to: 'products#edit'

  patch '/product/:id', to: 'products#update'
  put '/product/:id', to: 'products#update'

  delete '/product/:id', to: 'products#delete'





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




end
