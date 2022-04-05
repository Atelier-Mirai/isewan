Rails.application.routes.draw do
  root "welcome#index"

  # STI
  resources :articles, only: %i[index new create update destroy]
  resources :landings, controller: :articles, type: :landing, only: %i[index new create update destroy]
  resources :abouts,   controller: :articles, type: :about, only: %i[index new create update destroy]
  resources :notices,  controller: :articles, type: :notice, only: %i[index new create update destroy]

  resources :events,    only: %i[index new create update destroy]

  # STI
  resources :galleries, only: %i[index new create update destroy]
  resources :photos, controller: :galleries, type: :photo, only: %i[index new create update destroy]
  resources :movies, controller: :galleries, type: :movie, only: %i[index new create update destroy]

  # Login / Logout
  get    "login",  to: "sessions#new",     as: :login
  post   "login",  to: "sessions#create"
  delete "logout", to: "sessions#destroy", as: :logout
  get    "logout", to: "sessions#destroy"
end
