module Api
    module V1
        class SeekerSkillsController < ApplicationController
            def index
                @seeker_skills = SeekerSkill.all
                render json: {data: @seeker_skills}
            end

            def show
                @seeker_skill = SeekerSkill.find(params[:id])
                render json: @seeker_skill.to_json(:include => {:seeker => {:only =>[:first_name, :last_name, :age]}, :skill => {:only =>[:name]}}, :except => [:updated_at])
            end
        end
    end
end
