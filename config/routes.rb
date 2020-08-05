Rails.application.routes.draw do
  
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#login'
  post 'login' => 'sessions#create'
  get '/signup' => 'users#new'
  post 'signup' => 'userscreate'
  delete '/logout' => 'sessions#logout'
  get '/shoes' => 'shoes#index'
  resources :raffles
  resources :shoes
  resources :users
  resources :entries 
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
