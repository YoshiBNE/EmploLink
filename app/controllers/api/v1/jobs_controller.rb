module Api
  module V1
    class JobsController < ApplicationController
      def index
        @jobs = Job.all
        render json: {data: @jobs}
      end
    
      def show
        @job = Job.find(params[:id])
        render json: @job.to_json
      end
    
      def create
      end
    
      def update
      end
    
      def destroy
      end
    end
  end
end