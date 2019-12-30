class ProjectsController < ApplicationController

  respond_to :json

  def index
  end

  def show
  end

  def create
    @project = Project.create(project_params)
    render json: @project
  end

  private

  def project_params
    params.fetch(:project).permit(:project_title, :project_desc, :project_status)
  end 

end

=begin

  response

      {
        "id": 1,
        "project_title": "First Project",
        "project_desc": "This is our first ever project",
        "project_status": null,
        "created_at": "2019-12-30T20:48:59.659Z",
        "updated_at": "2019-12-30T20:48:59.659Z"
      }
=end
