Rails.application.routes.draw do
  get '/projects', to: 'projects#index'
  post '/todos', to: 'projects#create_todo'
  post '/category', to: 'projects#create_category'
  patch 'projects/:categoryId/todo/:todoId', to: 'projects#update_todo'
end
