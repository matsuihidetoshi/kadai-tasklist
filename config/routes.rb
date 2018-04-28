Rails.application.routes.draw do

  root to: 'tasks#index'
  
  #sign up
  get 'signup', to: 'user#new'
  resources :users, only: [:index, :show, :new, :create]
  
  #login
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :tasks
end
