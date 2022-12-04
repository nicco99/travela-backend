Rails.application.routes.draw do

  resources :reviews
  resources :trips
  resources :buses
  resources :routes, only: [:index, :show, :update, :create]
  resources :bookings

  resources :passengers
end
