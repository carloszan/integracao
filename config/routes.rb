Rails.application.routes.draw do

  resources :create_students

  get 'mobile' => "mobile#index"
  get 'about' => 'visitors#about'

  devise_for :students
  devise_for :employees
  resources :employee_books
  resources :student_books
  root 'visitors#index'
end
