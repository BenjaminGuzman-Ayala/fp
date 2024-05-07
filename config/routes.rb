Rails.application.routes.draw do
  resources :programs
  resources :curriculums
  devise_for :users
  resources :schools
  resources :students
  get 'home/index'

  root to: "home#index"
end
