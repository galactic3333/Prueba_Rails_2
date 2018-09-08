Rails.application.routes.draw do
  devise_for :users, controllers: {
  	registrations: 'users/registrations'
  }

  get 'users/:id/task_status', to: 'user_tasks#task_status', as: 'task_status'
  post 'users/:id/complete_task', to: 'user_tasks#complete_task', as: 'complete_task'
  delete 'users/:id/remove_task', to: 'user_tasks#remove_task', as: 'remove_task'

  get 'tasks/:id/task_list', to: 'user_tasks#task_list', as: 'task_list'

  resources :tasks
  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
