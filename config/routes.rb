Rails.application.routes.draw do
  resources :reviews, only: [:create,:index]
  resources :trips, only: [:index, :show, :create]
  resources :buses
  resource :transactions, only: [:create]
  resources :routes
  resources :bookings, only: [:index,:show]
  resources :passengers, only: [:create]
  resources :sessions, only: [:create, :destroy]
  post 'login', to: 'auth#create'
end
