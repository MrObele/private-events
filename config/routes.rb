Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
 post 'sessions/new', to: 'sessions#create'
 root "users#new"
 resources :users
 resources :sessions, only: [:new]
end
