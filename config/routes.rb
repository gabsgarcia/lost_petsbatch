Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # read all
  get "pets", to: "pets#index"
  # create
  get "pets/new", to: "pets#new"
  post "pets", to: "pets#create"
  # read one
  get "pets/:id", to: "pets#show", as: "pet"
  # update
  get "pets/:id/edit", to: "pets#edit", as: "edit_pet"
  patch "pets/:id", to: "pets#update"
  # destroy
  delete "pets/:id", to: "pets#destroy"


  # root to: "pets#index"
  # resources :pets
end
