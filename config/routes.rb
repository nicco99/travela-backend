Rails.application.routes.draw do
  resources :reviews
  resources :trips, only: [:index, :show, :create]
  resources :buses
  resources :routes, only: [:index, :show, :update, :create, :destroy]
  resources :bookings
  resources :passengers

  resources :sessions, only: [:create, :destroy]
end
