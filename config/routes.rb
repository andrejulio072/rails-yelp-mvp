Rails.application.routes.draw do
  # verb path, to: "control#action"
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
end

  # Read - Mostrar todos os restaurantes / mostrar um restaurante
  get "/restaurants", to: "restaurants#index"
  get "/restaurants/:id", to: "restaurants#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Create - Criar um novo restaurante
  # 1. Rota para levar o usuario ao formulario
  get "restaurants/new", to: 'restaurants#new'
  # 2. Rota para levar as infos que o usuario inputou p/ o controller
  post '/restaurants', to: 'restaurants#create'

  #Update - Editar um restaurante especifico
  # 1. Rota para levar o usuario ao formulario
  get 'restaurants/:id/edit', to: 'restaurants#edit'
  #2.  Rota para levar as infos que o usuario inputou p/ o controller
  patch '/restaurants/:id', to: 'restaurants#update'

  #Delete - Deletar um restaurante especifico
  delete '/restaurants/:id', to: 'restaurants#delete'
