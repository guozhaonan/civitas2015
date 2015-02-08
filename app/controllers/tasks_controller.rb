class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def edit
  end

  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        redirect_to @task, notice: 'Task was successfully created.'
      else
        render action: 'new'
    end
  end

  def update
      if @task.update(project_params)
        redirect_to @task, notice: 'Task was successfully updated.'
      else
        render action: 'edit'
      end
  end

  def destroy
    @task.destroy
      redirect_to tasks_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:description)
    end
end
