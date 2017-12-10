Rails.application.routes.draw do

  resources :attractions
  resources :users
  get "/", to: "users#new"
end
