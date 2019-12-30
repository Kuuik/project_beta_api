class TasksController < ApplicationController
  before_action :set_project, only: [:create,:index]
  before_action :set_parent_task, only: [:create]

  def index
    @tasks = @project.tasks.arrange_serializable
    render json: @tasks  
  end

  def create
    @task = @project.tasks.create(task_params)
    @task.update(parent: @parent_task)
    render json: @task
  end

  private

  def set_parent_task
    @parent_task = Task.find(params[:id])
  end

  def set_project
    @project = Project.find(params[:project_id])
  end

  def task_params
    params.fetch(:task).permit(:task_title, :task_desc, :project_id)
  end

end
