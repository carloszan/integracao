Rails.application.routes.draw do

  resources :create_students

  get 'mobile' => "mobile#index"

  #devise_for :students
  devise_for :employees
  resources :books
  root to: 'users#index'
end
