class MemosController < ApplicationController
    def index
        @memos = Memo.undiscarded.where(user_id: current_user)
        @del = Memo.discarded.where(user_id: current_user)
    end

    def edit
        @memo = Memo.find(params[:id])
    end

    def create
        @memo = Memo.new(memo_params)
        @memo.user_id = current_user.id
        @memo.save
        redirect_to user_memos_path
    end

    def update
        @memo = Memo.find(params[:id])
        @memo.update(create_memo_params)
        redirect_to user_memos_path
    end

    def destroy
        @memo = Memo.find(params[:id])
        @memo.discard
        redirect_to user_memos_path
    end

    def restoration
        memo = Memo.find(params[:id])
        memo.user_id = current_user.id
        memo.undiscard
        redirect_to user_memos_path
    end

    private
     def create_memo_params
        params.require(:memo).permit(:title, :body, :url)
     end

     def memo_params
        params.permit(:title, :body, :url)
     end

end
