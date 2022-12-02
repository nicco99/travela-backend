Rails.application.routes.draw do

  resources :buses
  resources :routes
  resources :bookings
  resources :passengers

end
