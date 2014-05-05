class JobsController < ApplicationController
  before_action :authenticate_user!

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path,
      notice: "New Job Successfully Created!"
    else
      render 'new'
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to job_path(@job),
      notice: "Job Successfully Updated!"
    else
      render 'edit'
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
      redirect_to jobs_path,
      notice: 'Job Successfully Deleted'
  end

  protected

  def job_params
    params.require(:job).permit(:position, :company, :location, :job_description, :job_posting_url, :application_date, :application_email, :application_contact, :status, :interest_level)
  end
end
