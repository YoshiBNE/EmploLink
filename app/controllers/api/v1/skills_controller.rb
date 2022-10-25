module Api
  module V1
    class SkillsController < ApplicationController
      before_action :setup_skill, only: [:show, :update, :destroy]

          def index
              @skills = Skill.all
              render json: {data: @skills}
          end

          def new
            @skill = Skill.new
          end

          def create
            skill = Skill.new(skill_params)
            if skill.save
              render json: {
                status: "SUCESS",
                data: skill
              }
            else
              render json: {
                status: "ERROR",
                data: skill.errors
              }
            end
          end

          def show
            if @skill
              render json: {
                status: "SUCCESS",
                data: @skill}
            else
              render json: {
                status: "ERROR",
                data: @skill.errors
              }
            end
          end

          def update
            if @skill.update(skill_params)
              render json: {
                status: "SUCESS",
                message: "Seeker details updated",
                data: @skill
              }
            else
              render json: {
                status: "ERROR/FAIL",
                message: "Update Failure",
                data: @skill.errors
              }
            end
          end

          def edit
          end

          def destroy
            @skill.destroy
            render json: {
              status: "SUCCESS",
              message: "Selected seeker has been deleted",
              data: @skill
            }
          end

          private

          def setup_skill
            @skill = Skill.find(params[:id])
          end

          def skill_params
            params.require(:skill).permit(:name, :description)
          end
    end
  end
end
