Rails.application.routes.draw do
  
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#login'
  post '/login' => 'sessions#new' #moved this to the new action
  
  get '/signup' => 'sessions#signup'
  post '/signup' => 'sessions#create' 
  
  delete '/logout' => 'sessions#logout'
  get '/shoes' => 'shoes#index'
  get '/auth/facebook/callback' => 'sessions#create'
  resources :raffles
  resources :shoes, only: [:index, :show]
  resources :users, only: :show
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
 