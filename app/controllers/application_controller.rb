class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :user_is_admin?, :redirect_if_user_not_admin

  def current_user
    return nil if session[:user_id].nil?
    User.find(session[:user_id])
  end

  def user_name
    return nil if session[:user_id].nil?
    User.find(session[:user_id]).first_name
  end

  def user_is_admin?
    current_user && current_user.admin
  end

  def redirect_if_user_not_admin
    redirect_to :root unless user_is_admin?
  end
end
