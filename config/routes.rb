Rails.application.routes.draw do

  resources :reviews
  resources :trips, only: [:index]
  resources :buses
  resources :routes
  resources :bookings

  resources :passengers
end
