class JobsController < ApplicationController

    def index
        @jobs = Jobs.all
        render json: @jobs
    end

    def show
        @job = Job.find(params[:id])
        render json: @job
    end

    def create
        @job = Job.create({
            company: params[:company],
            salary_range: params[:salary_range],
            job_title: params[:job_title],
            job_description: params[:job_description],
            recruiter: params[:recruiter],
            about_company: params[:about_company],
            tech_stack: params[:tech_stack],
            extras: params[:extras]
        })

        redirect_to "http://localhost:3000"
    end

    def update
        @job = Job.find(params[:id])
        @job = job.update({
            company: params[:company],
            salary_range: params[:salary_range],
            job_title: params[:job_title],
            job_description: params[:job_description],
            recruiter: params[:recruiter],
            about_company: params[:about_company],
            tech_stack: params[:tech_stack],
            extras: params[:extras]
        })
        redirect_to "http://localhost:3000"
    end

    def destroy
        @job = Job.find_by(params[:id])
        @job.destroy
    end

end
