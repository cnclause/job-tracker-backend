class JobTrackersController < ApplicationController

    def index
        @job_trackers = JobTracker.all
        render json: @job_trackers, include: :job_notes
    end

    def create
        @job_tracker = JobTracker.create({
            user_id: params[:user_id],
            job_id: params[:job_id],
            connections: params[:connections],
            applied: params[:applied],
            phone_screening: params[:phone_screening],
            interview_one: params[:interview_one],
            interview_two: params[:interview_two],
           interview_three: params[:interview_three],
           interview_four: params[:interview_four]
        })

        redirect_to "http://localhost:3000"

    end

    def update
        @job_tracker = JobTracker.find(params[:id])
        @job_tracker = JobTracker.update({
            user_id: params[:user_id],
            job_id: params[:job_id],
            connections: params[:connections],
            applied: params[:applied],
            phone_screening: params[:phone_screening],
            interview_one: params[:interview_one],
            interview_two: params[:interview_two],
           interview_three: params[:interview_three],
           interview_four: params[:interview_four]
        })
    end
end
