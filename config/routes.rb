Rails.application.routes.draw do

  resources :attractions
  resources :users
  root "sessions#welcome"
  get "/users/new", to: "users#new"
  post "/signup", to: "users#create"
  get "/signin", to: "sessions#signin"
  post "/signin_user", to: "sessions#signin_user"
  get "/signout", to: "sessions#signout"
  post "/rides/new", to: "rides#create"
end
