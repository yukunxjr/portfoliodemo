class UsersController < ApplicationController
    before_action :authenticate_user!, only: [:show]
    def show
        @user = User.find(params[:id])
    end
    def edit
        @user = user.find(params[:id])
    end

    def levelup
        user = User.find(params[:id])
        memo = Memo.find(params[:id])
      
        totalExp = user.exp
        #変数に現在のユーザーの経験値を入れる
        totalExp += memo.exp
        # 得られた経験値をユーザーの経験値に加算
      
        user.exp = totalExp
        #改めて、加算した経験値をuserの総経験値を示す変数に入れ直す
        user.update(exp: totalExp)
        #更新の処理をさせる
      
        levelSetting = LevelSetting.find_by(level: user.level + 1);
        #ここから重要です！レベルセッティングのモデルから、今の自分のレベルより1高いレコードを探させます。
        #そしてそれを変数に入れておきます
      
        if levelSetting.thresold <= user.exp
        #探してきたレコードの閾値よりもユーザーの総経験値が高かった場合
          user.level = user.level + 1
          user.update(level: user.level)
        #レベルを1増やして更新
        end
        redirect_back(fallback_location: user_path(current_user))
      end
end
