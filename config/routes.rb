Rails.application.routes.draw do

  # heroku から fly.io へ 301 リダイレクトする
  # https://zenn.dev/fuji_nakahara/articles/23257b0f4b0b8e
  constraints host: 'isewan.herokuapp.com' do
    get '/(*path)', to: redirect { |path_params,| "https://isewan-cup.org/#{path_params[:path]}" }
  end

  root "welcome#index"

  # PWA
  # https://qiita.com/pham_thanh_thuong/items/f5a043f1730c3bf4bfe7
  resources :manifest, only: %i[index]
  resources :serviceworker, only: %i[index]

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

  # database export
  get 'db_export', to: "db_export#index", as: :db_export
end
