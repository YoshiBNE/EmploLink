module Api
    module V1
        class SeekerSkillsController < ApplicationController
            def index
                ### query => localhost:3000/seeker_skills?query_seeker_id="" or query_skill_id=""
                @seeker_skills = SeekerSkill.all
                if params[:query_seeker_id]
                    skills = @seeker_skills.where(seeker_id: params[:query_seeker_id])
                    # skills = find_skills(@seeker_skills, params[:seeker_id])
                    render json: {list_of_skills: skills}
                elsif params[:query_skill_id]
                    seekers = @seeker_skills.where(skill_id: params[:query_skill_id])
                    render json: {list_of_seekers: seekers}
                else
                    render json: {data: @seeker_skills}
                end
            end

            def show
                @seeker_skill = SeekerSkill.find(params[:id])
                render json: @seeker_skill.to_json(:include => {:seeker => {:only =>[:first_name, :last_name, :age]}, :skill => {:only =>[:name]}}, :except => [:updated_at])
            end

            def destroy
                @seeker_skill = SeekerSkill.find(params[:id])
                @seeker_skill.destroy
                render json: {
                  status: "SUCCESS",
                  message: "Selected link has been deleted"
                }
            end

            # private

            # def find_seekers(seeker_skills, skill_id)
            #     ### Find all seekers who has the selected skill ### 
            #     seeker_skills.map do |s_s|
            #         if s_s.skill.present?
            #             if s_s.skill_id == skill_query
            #                 s_s.seeker
            #             end
            #         end
            #     end
            # end

            # def find_skills(seeker_skills, seeker_query) ### seeker_query = first_name 
            #     array = seeker_query.split(" ")
                
            #     seeker_skills.map do |s_s|
            #         if s_s.skill.present?
            #             if s_s.seeker.first_name == array[0] && s_s.seeker.last_name == array[1]
            #                 s_s.skill
            #             end
            #         end
            #     end.compact
            # end


        end
    end
end
