Rails.application.routes.draw do
  resources :reviews
  resources :trips, only: [:index, :show, :create]
  get 'filtered', to: 'trips#filtered'

  resources :buses
  resources :routes
  resources :bookings, only: [:index, :create]
  resources :passengers, only: [:create]
  resources :sessions, only: [:create, :destroy]
end
