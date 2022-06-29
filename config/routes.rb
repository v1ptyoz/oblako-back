Rails.application.routes.draw do
  get '/projects', to: 'projects#index'
  post '/todos', to: 'projects#create_todo'
  patch 'projects/:categoryId/todo/:todoId', to: 'projects#update_todo'
end
