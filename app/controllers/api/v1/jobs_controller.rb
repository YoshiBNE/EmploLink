module Api
  module V1
    class JobsController < ApplicationController
      before_action :set_job, only: [:show, :update, :destroy]

      def index
        ### query => localhost:3000/seeker_skills?query_seeker_id="" or query_skill_id=""
        @jobs = Job.all
        if params[:employer_id]
            jobs = @jobs.where(employer_id: params[:employer_id])
            render json: {data: jobs}
        elsif params[:category_id]
            jobs = @jobs.where(category_id: params[:category_id])
            render json: {data: jobs}
        else
            render json: {data: @jobs}
        end
      end
    
      def show
        if @job
          render json: {
            status: "SUCCESS",
            data: @job}
        else
          render json: {
            status: "ERROR",
            data: @job.errors
          }
        end
      end
    
      def create
      end
    
      def update
        if @job.update(job_params)
          render json: {
            status: "SUCESS",
            message: "Job details updated",
            data: @job
          }
        else
          render json: {
            status: "ERROR/FAIL",
            message: "Update Failure",
            data: @job.errors
          }
        end
      end
    
      def destroy
        @job.destroy
        render json: {
          status: "SUCCESS",
          message: "Selected job has been deleted",
        }
      end

      private

      def set_job
        @job = Job.find(params[:id])
      end

      def params_job
        params.require(:job).permit(:title, :description)
      end
    end
  end
end