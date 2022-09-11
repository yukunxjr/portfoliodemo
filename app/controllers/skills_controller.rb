class SkillsController < ApplicationController
    def index
        # @skills = Skills.find(user_id:params[:user_id])
        # @user = User.find(params[:user_id])
      end

    def update
    end


    def create
        @user = User.find(params[:user_id])
        @skill = Skills.new(skills_params)
        @skill.save
    end

    def destroy
    end

    private
    def skills_params
      params.require(:skills).permit(:slills, :study_time)
    end
    
    
end
