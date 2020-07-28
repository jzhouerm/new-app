Rails.application.routes.draw do
  root 'events#index'
  resources :users
  resources :interests
  resources :locations
  resources :events
  resources :registrations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
