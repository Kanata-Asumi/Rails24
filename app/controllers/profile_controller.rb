class ProfileController < ApplicationController
    
    def new
        @message = '以下の情報を入力してください'
    end

    def create
        # インスタンスを作成
        @profile = Profile.new(
            name: params[:name],
            department: params[:department],
            grade: params[:grade]
        )
        # インスタンスを保存
        @profile.save
        # 登録後のページを指定する
        redirect_to "/home"
    end

end
