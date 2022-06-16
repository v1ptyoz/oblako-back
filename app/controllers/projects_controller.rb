class ProjectsController < ActionController::Base
  def index
    render json: {"message": "ok"}
  end
end