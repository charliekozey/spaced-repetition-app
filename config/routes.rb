Rails.application.routes.draw do
  
  resources :pieces
  resources :piece_types
  resources :client_carts
  resources :decorator_carts
  resources :rooms
  resources :clients
  resources :decorators
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
