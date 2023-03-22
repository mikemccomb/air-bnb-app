Rails.application.routes.draw do
  #Rooms
  get "/rooms" => "rooms#index"
  get "/rooms/:id" => "rooms#show"
end
