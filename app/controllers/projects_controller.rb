class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)


      if @project.save
        flash[:notice] = 'Project was successfully created.'
        redirect_to @project
      else
        render action: 'new'
      end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
      if @project.update(project_params)
        redirect_to @project, notice: 'Project was successfully updated.'
      else
        render action: 'edit'
      end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
      redirect_to projects_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:description, :title, :partner, :CoreValue1, :CoreValue2, :CoreValue3, :DevelopingSkills)
    end
end
