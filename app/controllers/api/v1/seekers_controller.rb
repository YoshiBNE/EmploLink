module Api
  module V1
    class SeekersController < ApplicationController
      before_action :setup_seeker, only: [:show, :update, :destroy]

      def index
          @seekers = Seeker.all
          render json: {data: @seekers}
      end

      def new
        @seeker = Seeker.new
      end

      def create
        seeker = Seeker.new(seeker_params)
        if seeker.save
          render json: {
            status: "SUCESS",
            data: seeker
          }
        else
          render json: {
            status: "ERROR",
            data: seeker.errors
          }
        end
      end

      def show
        if @seeker
          render json: {
            status: "SUCCESS",
            data: @seeker}
        else
          render json: {
            status: "ERROR",
            data: @seeker.errors
          }
        end
      end

      def update
        if @seeker.update(seeker_params)
          render json: {
            status: "SUCESS",
            message: "Seeker details updated",
            data: @seeker
          }
        else
          render json: {
            status: "ERROR/FAIL",
            message: "Update Failure",
            data: @seeker.errors
          }
        end
      end

      def edit
      end

      def destroy
        @seeker.destroy
        render json: {
          status: "SUCCESS",
          message: "Selected seeker has been deleted",
          data: @seeker
        }
      end

      private

      def setup_seeker
        @seeker = Seeker.find(params[:id])
      end

      def seeker_params
        params.require(:seeker).permit(:first_name, :last_name, :email, :gender, :age, :phone)
      end
    end
  end
end
