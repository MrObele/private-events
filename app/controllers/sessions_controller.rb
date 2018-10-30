class SessionsController < ApplicationController
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
  end

  private


  def log_in user
    session[:email] = user.email
  end
end
