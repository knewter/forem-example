class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user, :user_signed_in?, :user_signed_out?
  helper_method :current_users_count

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
    @current_user
  end

  def user_signed_in?
    !!current_user
  end

  def user_signed_out?
    !user_signed_in?
  end

  protected
  def current_users_count
    current_users.count
  end
end
