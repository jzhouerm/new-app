Rails.application.routes.draw do
  root 'events#index'

  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#create'

  get 'login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy', as: 'logout'
  post '/login', to: 'sessions#create'

  resources :users
  resources :interests
  resources :locations
  resources :events
  resources :registrations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
