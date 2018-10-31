class UsersController < ApplicationController
  include SessionsHelper
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params) 
    if @user.save
     redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def attend(event)
    attended_events << event
  end

    private

    def user_params
      params.require(:user).permit(:name,:email,:password,:password_confirmation)
    end

end
