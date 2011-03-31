class UserSessionsController < ApplicationController

#  before_filter :require_no_user, :only => [:new, :create]
#  before_filter :require_user, :only => :destroy

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      redirect_to root_url, :notice => "Successfully logged in."
    else
      render :action => 'new'
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    redirect_to users_url, :notice => "Successfully logged out."
  end

end