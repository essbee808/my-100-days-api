Rails.application.routes.draw do
  root to: 'sessions#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  resources :entries
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
