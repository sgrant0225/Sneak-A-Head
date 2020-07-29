Rails.application.routes.draw do
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#login'
  post 'login' => 'sessions#create'
  get '/signup' => 'users#new'
  post 'signup' => 'userscreate'
  delete '/logout' => 'sessions#logout'
  resources :raffles
  resources :sneakers
  resources :users
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
