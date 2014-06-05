class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :user_is_admin?, :check_user_for_redirection, :redirect_if_user_not_admin
  def current_user
    return nil if session[:user_id].nil?
    User.find(session[:user_id])
  end

  def user_is_admin?
    not current_user.nil? and current_user.admin
  end

  def check_user_for_redirection
    if current_user.nil?
      redirect_to :root
      return
    end
    if user_is_admin?
      true
    elsif current_user.id == @user.id
      true
    else
      redirect_to :root
      false
    end
  end

  def redirect_if_user_not_admin
    redirect_to :root unless user_is_admin?
  end
end
