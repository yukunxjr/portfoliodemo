class LearningItemsController < ApplicationController

    def index
        @learningItem = LearningItem.where(user_id:params[:user_id])
        @user = User.find(params[:user_id])
        @learningItem.all
    end

    def new
        @learningItem = LearningItem.new
        @user = User.find(params[:user_id])
    end

    def create
        @user = User.find(params[:user_id])
        @learningItem = LearningItem.new(learningItems_params)
        @learningItem.save
        redirect_to user_learning_items(current_user)
    end

    def destroy
        @learningItem = LearningItem.find(params[:id])
        @user = User.find(params[:user_id])
        @learningItem.destroy
    end

    private

        def learningItems_params
            params.require(:learningItem).permit(:name, :study_time, :user_id)
        end
end
