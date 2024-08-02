Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'activity/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:new, :create,:index]
  root "dashboard#index"
  get 'dashboard/new'
  get 'dashboard/create'

  get "/login", to: "login#index"
  post "/login", to: "sessions#create"
  post "/users/new", to: "user#new"
  post "/activity/new", to: "activity#create"


end
