Rails.application.routes.draw do
  
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#login'
  post 'login' => 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  delete '/logout' => 'sessions#logout'
  get '/shoes' => 'shoes#index'
  get '/auth/facebook/callback' => 'sessions#create'
  resources :raffles
  resources :shoes, only: [:index, :show]
  resources :users
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 