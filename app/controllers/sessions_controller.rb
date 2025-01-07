class SessionsController < ApplicationController
  
  def new
    @count = flash[:count]
    if (@count == 1)
      @error_message = '学生番号またはパスワードが間違っています！'
    else
      @error_message = ''
    end
  end

  
  # ログイン
  def create
    # ユーザー名とパスワードが一致すればログインする
    user = User.find_by(name: params[:session][:name].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      # ログイン後のページを指定する
      redirect_to "/home"
    else
      # ログインに失敗したことを表示するための変数
      flash[:count] = 1
      # ログインできなかったら，そのままのページを表示
      redirect_to action: :new
      # render 'new'
    end
  end


  # ログアウト
  def destroy
    # helpers>sessions_helper.rbにある関数を実行し，ログアウトする
    log_out if logged_in?
    # 最初の画面に戻る
    redirect_to root_url
  end

end
