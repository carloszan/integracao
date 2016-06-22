Rails.application.routes.draw do

  resources :students

  #devise_for :students
  devise_for :employees
  resources :books
  root to: 'users#index'
end
