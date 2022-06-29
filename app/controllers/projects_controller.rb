class ProjectsController < ActionController::Base
  # TODO: uncomment next line for test in HTTP client
  skip_before_action :verify_authenticity_token
  #
  def index
    render json: Category.all.as_json(include: :todos)
  end

  def create_todo
    text = params[:text]
    category_id = params[:category_id]
    new_category_title = params[:new_category_title]
    if category_id === 0
      category = Category.create(title: new_category_title)
      Todo.create(text: text, category_id: category.id)
      render json: category.as_json(include: :todos)
    else
      todo = Todo.create(text: text, category_id: category_id)
      render json: todo
    end
  end

  def update_todo
    todo = Todo.find(params[:todoId])
    todo.isCompleted = !todo.isCompleted
    todo.save
    render json: todo
  end

end