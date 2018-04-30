Rails.application.routes.draw do

  root to: 'toppages#index'
  
  #sign up
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  #login
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :tasks, only: [:edit, :update, :create, :destroy]
end
