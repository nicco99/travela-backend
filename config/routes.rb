Rails.application.routes.draw do
  resources :trips
  resources :buses
  resources :routes
  resources :bookings
  resources :passengers

end
