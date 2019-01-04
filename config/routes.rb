Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/about', to: 'pages#about', as: 'about'
  get '/contact', to: 'pages#contact', as: 'contact'

  resources :courses, only: [:show]
  get 'tools/tools_course_index', to: "tools#tools_course_index", as: 'tools_course_index'


end
