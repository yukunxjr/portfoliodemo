class StudysController < ApplicationController
    def index
        @learns = Learn.all.where(user_id: current_user)
        @study = Study.new
        @studys = Study.all.where(user_id: current_user).sum(:time)
      end
    
      def create
        # @learn = Learn.find(learn_id: params[:learn_id])
        @study = Study.new(study_params)
        @study.user_id = current_user.id
        @study.save
        redirect_to action: 'index'
      end
    
      private 
    
      def study_params
        params.require(:study).permit(:time, :date, :learn_id)
      end
end
