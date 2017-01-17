class JobsController < ApplicationController
  def index
    @jobs= Job.all
  end


  def show
    @job = Job.find(param[:id])
  end

  def created
    @job = Job.new(job_params)
    if @job.save
      redirect_to job_path
    else
      render :new
    end
  end

private
  def job_params
    param.require(:job).permit(:title, :description)
  end
end
