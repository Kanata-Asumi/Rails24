class ApplicationController < ActionController::Base
    # ログイン機能のため，追加
    include SessionsHelper
end
