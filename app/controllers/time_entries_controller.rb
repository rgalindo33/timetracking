class TimeEntriesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @time_entries = @project.time_entries.where("date > ?", 1.month.ago)
  end
end
