module Api
  module V1
    class SeekersController < ApplicationController
      def index
          @seekers = Seeker.all
          render json: {data: @seekers}
      end

      def new
        @seeker = Seeker.new
      end

      def create
      end

      def show
        @seeker = Seeker.find(params[:id])
        render json: {data: @seeker}
      end

      def update
      end

      def edit
      end

      def destroy
      end
    end
  end
end
