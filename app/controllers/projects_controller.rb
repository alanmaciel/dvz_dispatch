class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
   @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to @project
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.save
    redirect_to @project
  end

  private

    def project_params
      params.require(:project).
        permit(:name, :short_name, :code_name, :creation_date,
              :release_date, :description, :subsystems, 
              :last_release_date, :last_release_time,
              :last_release_version, :last_release_description,
              :last_release_deployer, :next_release_date,
              :next_release_time, :next_release_version, 
              :next_release_description, :next_release_deployer)
    end
end
