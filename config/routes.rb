   
      Rails.application.routes.draw do
      post 'events/:id', to: 'invitations#create'
      get 'events/new'
      get 'events/show'
      get  '/signup', to: 'users#new'
       get  '/login', to: 'sessions#new'
       post  '/login', to: 'sessions#create'
       delete '/logout', to: 'sessions#destroy'
       post 'events/new', to: 'events#create'
       root "events#index"
       resources :users
       resources :sessions, only: [:new]
       resources :events
      end