class MemosController < ApplicationController
    def index
        @memos = Memo.all
    end

    def edit
        @memo = Memo.find(params[:id])
    end

    def create
        Memo.create(memo_params)
        redirect_to memos_path
    end

    def update
        @memo = Memo.find(params[:id])
        @memo.update(create_memo_params)
        redirect_to memos_path
    end

    def destroy
        @memo = Memo.find(params[:id])
        @memo.destroy
        redirect_to memos_path
    end

    private
     def create_memo_params
        params.require(:memo).permit(:title, :body, :url)
     end

     def memo_params
        params.permit(:title, :body, :url)
     end
end
