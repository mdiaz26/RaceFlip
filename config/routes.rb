Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "application#welcome"
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#logout", as: "logout"
  delete "/logout", to: "sessions#destroy"

  get "/users", to: "users#index", as: "users"
  get "/signup", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/garage", to: "users#garage", as: "garage"
  
  get "/dealer", to: "usercars#dealer", as: "dealer"
  get "/dealer/buy", to: "usercars#new", as: "buy"
  post "/dealer", to: "usercars#create"
  get "dealer/sell", to: "usercars#sell", as: "sell"
  delete "/dealer/sell", to: "usercars#destroy"

  get "/leaderboards", to: "users#leaderboard", as: "leaderboard"

  get "/race", to: "races#new", as: "race"
end
