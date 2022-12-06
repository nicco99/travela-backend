Rails.application.routes.draw do
  resources :reviews
  resources :trips, only: [:index, :show, :create]
  resources :buses
  resources :routes
  resources :bookings
  resources :passengers, only: [:create]
  resources :sessions, only: [:create, :destroy]
end
