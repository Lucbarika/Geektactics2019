Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/about', to: 'pages#about', as: 'about'
  get '/contact', to: 'pages#contact', as: 'contact'

  resources :courses, only: [:show]
  resources :tools, only: [:show] do
    resources :tool_feedbacks, only: [:index]
  end

  get 'tools/tools_course_index', to: "tools#tools_course_index", as: 'tools_course_index'
  get 'users/tutor_dashboards', to: 'dashboards#tutor_dashboard', as: 'tutor_dashboard'
  get 'users/student_dashboards', to: 'dashboards#student_dashboard', as: 'student_dashboard'

end
