module Api
  module V1
    class LinksController < ApplicationController
      def index
        @links = Link.all
        render json: {data: @links}
      end

      def show
          @link = Link.find(params[:id])
          render json: @link.to_json(:include => {:seeker => {:only =>[:first_name, :last_name, :age]},
                                                :employer => {:only =>[:company_name, 
                                                :state]}, 
                                                :interview_date}, :except => [:updated_at])
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