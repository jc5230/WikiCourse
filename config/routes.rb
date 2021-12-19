Rails.application.routes.draw do

  get 'planner/main'
  get 'planner/show'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/login'
  get 'sessions/welcome'
  get 'users/new'
  get 'users/create'
  get 'courses/main'
  get 'courses/detail'
  get 'courses/home'
  get 'courses/comment'
  post 'courses/comment'
  post 'courses/main'
  post 'courses/add'
  get 'courses/add'

  # user authentication
  resources :users, only: [:new, :create]
  get '/', to: 'sessions#welcome'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
