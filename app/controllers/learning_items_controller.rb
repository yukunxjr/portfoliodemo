class LearningItemsController < ApplicationController
    before_action :authenticate_user!, only: %i[create destroy]

    def index
        @learningItems = LearningItem.all
        # where(user_id: current_user.id)
    end

  
    def create
      LearningItem.create(learningItem_params)
      redirect_to learning_items_path
    end
  
    def destroy
      @learningItem = LearningItem.find(params[:id])
      if current_user.id == @learningItem.user_id
        @learningItem.destroy
      end
      redirect_to learning_items_path
    end

    private
    def learningItem_params
        params.permit(:name, :study_time, :user_id)
    end

end
