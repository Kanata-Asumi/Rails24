class HobbySelectingsController < ApplicationController

    def new
    end

    def create
        # インスタンスを作成
        @hobbyselecting = HobbySelecting.new(
            poster: params[:poster],
            hobby_id: params[:hobby_id]
        )
        # インスタンスを保存
        @hobbyselecting.save
        # ホーム画面に戻る
        redirect_to "/home"
    end


end
