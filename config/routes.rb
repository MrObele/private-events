Rails.application.routes.draw do
  get 'events/index'
  get 'events/new'
  get 'events/show'
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
 post 'sessions/new', to: 'sessions#create'
 post 'events/new', to: 'events#create'
 root "users#new"
 resources :users
 resources :sessions, only: [:new]
 resources :events
end
