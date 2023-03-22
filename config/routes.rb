Rails.application.routes.draw do
  # login routes
  get "/signup" => "users#new"
  post "/users" => "users#create"

  # sessions routes
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
