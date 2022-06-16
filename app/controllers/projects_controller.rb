class ProjectsController < ActionController::Base
  # TODO: uncomment next line for test in HTTP client
  skip_before_action :verify_authenticity_token
  #
  def index
    @categories = Category.all
  end

  def create_todo
    text = params[:text]
    category_id = params[:category_id]
    Todo.create(text: text, category_id: category_id)
    render json: {"status": "ok"}
  end

  def update_todo
    todo = Todo.find(params[:todoId])
    todo.isCompleted = !todo.isCompleted
    todo.save
    render json: {"status": "ok"}
  end

  def create_category
    title = params[:title]
    Category.create(title: title)
    render json: {"status": "ok"}
  end

end