Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#tasks', as: :tasks
  get 'task/:id', to: 'tasks#task', as: :task
  get 'new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create', as: :create
  get "task/:id/edit", to: "tasks#edit", as: :edit
  patch 'task/:id', to: 'tasks#update', as: :update
  delete 'task/:id', to: 'tasks#delete', as: :delete
end
