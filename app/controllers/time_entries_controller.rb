class TimeEntriesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @time_entries = @project.time_entries.where("date > ?", 1.month.ago)
  end

  def new
    @my_project = Project.find(params[:project_id])
    @my_entry = @my_project.time_entries.new
  end

  def create
    @my_project = Project.find(params[:project_id])
    @my_entry = @my_project.time_entries.create(entry_params)

    if @my_entry
      redirect_to action: "index",
                  controller: "time_entries",
                  project_id: @my_project.id
    else
      render "new"
    end
  end

  def edit
    @my_project = Project.find(params[:project_id])
    @my_entry = @my_project.time_entries.find(params[:id])
  end

  def update
    @my_project = Project.find(params[:project_id])
    @my_entry = @my_project.time_entries.find(params[:id])

    if @my_entry.update(entry_params)

      redirect_to action: "index",
                  controller: "time_entries",
                  project_id: @my_project.id
    else
      render "edit"
    end
  end

  def entry_params
    params.require(:time_entry).permit(:hour)
  end


end
