Rails.application.routes.draw do

  resources :reviews
  resources :trips, only: [:index, :show, :create]
  resources :buses
  resources :routes, only: [:index, :show, :update, :create, :destroy]
  resources :bookings, only: [:show, :create]

  resources :passengers, only:[:index] do 
    resources :bookings, only: [ :index]
  end
end
