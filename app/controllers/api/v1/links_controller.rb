module Api
  module V1
    class LinksController < ApplicationController
      def index
        ### query => localhost:3000/links?seeker_id="" or employer_id=""
        @links = Link.all
        if params[:seeker_id]
          employers = @links.find_by(seeker_id: params[:seeker_id])
          render json: {data: employers}
        elsif params[:employer_id]
          seekers = @links.find_by(employer_id: params[:employer_id])
          render json: {data: seekers}
        else ### query => localhost:3000/links
          render json: {data: @links}
        end
      end

      def show
          @link = Link.find(params[:id])
          render json: @link.to_json(:include => {:seeker => {:only =>[:first_name, :last_name, :age]},
                                                :employer => {:only =>[:company_name, :state]}}, :except => [:updated_at])
      end

      # def create
      # end

      # def update
      # end

      def destroy
        @link.destroy
        render json: {
          status: "SUCCESS",
          message: "Selected link has been deleted",
          data: @link
        }
      end
    end
  end
end