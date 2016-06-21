Rails.application.routes.draw do
  devise_for :students
  devise_for :employees
  root to: 'visitors#index'
end
