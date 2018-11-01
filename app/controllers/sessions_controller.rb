class SessionsController < ApplicationController
  include SessionsHelper
  def new

  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    logout_out if logged_in?
    flash[:success] = "Signed Out Successfully"
    redirect_to root_url
  end

  private


end
