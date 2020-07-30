Rails.application.routes.draw do
  root to: 'events#index'

  get '/signup', to: 'users#new', as: 'signup'
  post '/signup', to: 'users#create'

  get 'login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create', as: 'new_session'


  get '/logout', to: 'sessions#logout', as: 'logout'
  

  resources :users
  resources :interests
  resources :locations
  resources :events
  resources :registrations

end
