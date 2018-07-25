Rails.application.routes.draw do
  resources :lessons
  resources :students

  root 'students#index'

  get 'new_lesson' => 'lessons#new'
  get 'show_student' => 'students#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
