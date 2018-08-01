Rails.application.routes.draw do
  devise_for :users
  resources :lessons
  resources :students

  root 'students#index'

  get 'new_lesson' => 'lessons#new'
  get 'show_student' => 'students#show'
  get 'lessons_by_student' => 'lessons#lessons_by_student', as: 'student_lessons'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
