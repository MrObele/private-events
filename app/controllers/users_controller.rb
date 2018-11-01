class UsersController < ApplicationController
  include SessionsHelper
  include EventsHelper
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params) 
    if @user.save
      log_in @user
      flash[:success] = "Account Created Successfully"
     redirect_to @user
    else
      flash.now[:danger] = "Please Correct Error(s)"
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @upcoming_events = @user.upcoming_events
    @prev_events = @user.past_events
  end

  def attend(event)
    attended_events << event
  end

    private

    def user_params
      params.require(:user).permit(:name,:email,:password,:password_confirmation)
    end

end
