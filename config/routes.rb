Rails.application.routes.draw do
  get 'course_page/course_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'course_page#course_list'
end
