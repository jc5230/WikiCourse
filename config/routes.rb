Rails.application.routes.draw do
  get 'courses/main'
  get 'courses/detail'
  get 'courses/home'
  get 'courses/comment'
  post 'courses/comment'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
