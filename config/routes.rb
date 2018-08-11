Rails.application.routes.draw do
  get 'home/help'
  devise_for :users
  resources :lessons
  resources :students
  resources :quotes

  root 'students#index'

  get 'new_lesson' => 'lessons#new'
  get 'show_student' => 'students#show'
  get 'lessons_by_student' => 'lessons#lessons_by_student', as: 'student_lessons'
  get 'new_quote'=> 'quotes#new'
  get 'quotes' => 'quotes#index'
  get 'help' => 'home#help'

  mount Resque::Server, :at => "/resque"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
