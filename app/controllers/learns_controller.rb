class LearnsController < ApplicationController

    def index
        @learns = Learn.all.where(user_id: current_user)
    end

    def create
        @learn = Learn.new(learn_params)
        @learn.user_id = current_user.id
        @learn.save
        redirect_to user_learns_path
    end

    def destroy
        @learn = Learn.find(params[:id])
        @learn.destroy
        redirect_to user_learns_path
    end


    private
     def learn_params
        params.permit(:name)
     end


end
