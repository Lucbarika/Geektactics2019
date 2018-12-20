Rails.application.routes.draw do
  get 'course_feedbacks/courses'
  get 'course_feedbacks/pages'
  get 'course_feedbacks/product_feedbacks'
  get 'course_feedbacks/products'
  get 'course_feedbacks/purchases'
  get 'course_feedbacks/students'
  get 'course_feedbacks/tutors'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
