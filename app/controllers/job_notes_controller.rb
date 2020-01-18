class JobNotesController < ApplicationController

    def index
        @job_notes = JobNotes.all
        render json: @job_notes
    end

    def create
        @job_note = JobNote.create({
            job_tracker_id: params[:job_tracker_id],
            notes: params[:notes],
            interview_questions: params[:interview_questions],
            prep_questions: params[:prep_questions],
            improvement: params[:improvement]
        })

        redirect_to "http://localhost:3000"

    end

    def update
        @job_note = JobTracker.find(params[:id])

        @job_note = JobNote.update({
            job_tracker_id: params[:job_tracker_id],
            notes: params[:notes],
            interview_questions: params[:interview_questions],
            prep_questions: params[:prep_questions],
            improvement: params[:improvement]
        })

        redirect_to "http://localhost:3000"

    end
end
