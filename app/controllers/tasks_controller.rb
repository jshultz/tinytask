class TasksController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.create(params[:task])
    redirect_to project_path(@project)
  end

  def destroy
    @project  = Project.find(params[:project_id])
    @task     = @project.tasks.find(params[:id])
    @task.destroy

    redirect_to project_path(@project)

    #respond_to do |format|
    #  format.html { redirect_to projects_url }
    #  format.json { head :no_content }
    #end
  end
end
