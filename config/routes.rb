Rails.application.routes.draw do

  get "/restaurants", to: "restaurants#index"
  get "/restaurants/:id", to: "restaurants#show"
  # verb path, to: "control#action"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Create

  # Read

  #Update

  #Delete
end
