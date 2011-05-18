class SessionsController < ApplicationController
  before_filter :user_signed_in?, :only => [:delete]

  def new
    @user = User.new
  end

  def create
    if user = User.find_by_email(params[:user][:email]).try(:authenticate, params[:user][:password])
      session[:user_id] = user.id
      redirect_to root_path # Or whatever you want i.e. redirect_to user
    else
      render :new, :flash => { :error => "bad email/password combination" }
    end
  end

  def delete
    session.delete(:user_id)
  end
end
