class EventsController < ApplicationController
  include SessionsHelper
  def index
    @events = Event.all
    
    
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create 
    if logged_in?
   @event = current_user.organized_events.build(event_params)
    if @event.save
      flash[:success] = "Event reated"
      redirect_to current_user
    else
      render 'new'
    end
  else
    redirect_to root_path
  end
  end


  private 
  
  def event_params
    params.require(:event).permit(:description,:location,:date)
  end

end
