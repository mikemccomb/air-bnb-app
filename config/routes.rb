Rails.application.routes.draw do
  root "sessions#new"
  #Rooms
  get "/rooms" => "rooms#index"
  get "/rooms/:id" => "rooms#show"

  # login routes
  get "/signup" => "users#new"
  post "/users" => "users#create"

  # sessions routes
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  #reservations routes
  get "/reservations" => "reservations#new"
  post "/reservations" => "reservations#create"
end
