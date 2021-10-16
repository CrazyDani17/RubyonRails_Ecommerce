Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "categories/new", to: "categories#new"
  post "categories", to: "categories#create"
  get "categories/index", to: "categories#index"
  get "categories/:id", to: "categories#show"
  get "categories/:id/edit", to: "categories#edit"
  patch "categories/:id", to: "categories#update", as: :category
  delete "categories/:id", to: "categories#destroy"
  
end
