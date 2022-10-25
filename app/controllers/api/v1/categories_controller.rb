module Api
  module V1
    class CategoriesController < ApplicationController
      before_action :setup_category, only: [:show, :update, :destroy]

      def index
        @categories = Category.all
        render json: { data: @categories }
      end
    
      def show
        if @category
          render json: {
            status: "SUCESS",
            data: @category
          }
        else
          render json: {
            status: "ERROR",
            data: @category.errors
          }
        end
      end
    
      def create
        @category = Category.new(category_params)

      end
    
      def update
        if @category.update(category_params)
          render json: {
            status: "SUCESS",
            message: "Category details updated",
            data: @category
          }
        else
          render json: {
            status: "ERROR/FAIL",
            message: "Update Failure",
            data: @category.errors
          }
        end
      end
    
      def destroy
        @category.destroy
        render json: {
          status: "SUCCESS",
          message: "Selected category has been deleted",
          data: @category
        }
      end

      private

      def setup_category
        @category = Category.find(params[:id])
      end

      def category_params
        params.require(:category).permit(:name, :description)
      end
    end

  end
end