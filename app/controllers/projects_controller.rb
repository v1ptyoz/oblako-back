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
    if new_category_title
      category = Category.create(title: new_category_title)
      category_id = category.id
    end
    todo = Todo.create(text: text, category_id: category_id)
    render json: todo
  end

  def update_todo
    todo = Todo.find(params[:todoId])
    todo.isCompleted = !todo.isCompleted
    todo.save
    render json: todo
  end

end