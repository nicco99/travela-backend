Rails.application.routes.draw do
  resources :reviews, only: [:create,:index]
  resources :trips, only: [:index, :show, :create]
  resources :buses
  resource :transactions, only: [:create]
  resources :routes
  resources :bookings, only: [:index,:show,:create]
  resources :passengers, only: [:create,:index, :show, :update, :destroy]
  resources :sessions, only: [:create, :destroy]
  post 'login', to: 'auth#create'

end
