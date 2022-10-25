module Api
  module V1
    class EmployersController < ApplicationController
      def index
        @employers = Employer.all
          render json: {data: @employers}
      end
    
      def create
        employer = Employer.new(employer_params)
        if employer.save
          render json: {
            status: "SUCESS",
            data: employer
          }
        else
          render json: {
            status: "ERROR",
            data: employer.errors
          }
        end
      end

      def show
        if @employer
          render json: {
            status: "SUCCESS",
            data: @employer}
        else
          render json: {
            status: "ERROR",
            data: @employer.errors
          }
        end
      end

      def update
        if @employer.update(employer_params)
          render json: {
            status: "SUCESS",
            message: "Employer details updated",
            data: @employer
          }
        else
          render json: {
            status: "ERROR/FAIL",
            message: "Update Failure",
            data: @employer.errors
          }
        end
      end

      def destroy
        @employer.destroy
        render json: {
          status: "SUCCESS",
          message: "Selected employer has been deleted",
          data: @employer
        }
      end

      private

      def setup_employer
        @employer = Employer.find(params[:id])
      end

      def employer_params
        params.require(:employer).permit(:company_name, :state, :email, :phone)
      end
    end
  end
end