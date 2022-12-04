Rails.application.routes.draw do

  resources :reviews
  resources :trips
  resources :buses
  resources :routes, only: [:index, :show, :update, :create, :destroy]
  resources :bookings

  resources :passengers
end
