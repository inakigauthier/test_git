Rails.application.routes.draw do
  get "menus", to: "menus#index"
  get "menus/new", to: "menus#new"
  post "menus", to: "menus#create"
  get "menus/:id", to: "menus#show"
end
