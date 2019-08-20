Rails.application.routes.draw do
  get "/tasks/new", to: 'tasks#new'
  post "/tasks", to: 'tasks#create'

  get "/tasks", to: 'tasks#index'
  get "/tasks/:id", to: 'tasks#show', as: :task_show

  get "/tasks/:id/edit", to: 'tasks#edit', as: :task_edit
  patch "/tasks/:id", to: 'tasks#update'

  delete "/tasks/:id", to: 'tasks#destroy'
end
