class ApplicationController < ActionController::Base
  helper_method :current_user

  private

  # @current_userにsessionIDが入っている場合、そのidでユーザーモデルからデータを検索し、@current_userに格納するメソッド
  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      @current_user = User.new
    end
  end
end
