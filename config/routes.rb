Rails.application.routes.draw do

  resources :reviews
  resources :trips
  resources :buses
  resources :routes
  resources :bookings

  resources :passengers
end
