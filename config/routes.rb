Rails.application.routes.draw do
  root "welcome#index"
  resources :articles
  resources :landings, controller: :articles, type: :landing
  resources :abouts,   controller: :articles, type: :about
  resources :notices,  controller: :articles, type: :notice

  get    "login",  to: "sessions#new",     as: :login
  post   "login",  to: "sessions#create"
  delete "logout", to: "sessions#destroy", as: :logout
  get    "logout", to: "sessions#destroy"
end
