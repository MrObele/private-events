class InvitationsController < ApplicationController
  include SessionsHelper
  def new
  end

  def create
      @event = Event.find_by(params[:attended_event_id])
      current_user.attended_events << @event
      flash[:success] = "You are going to attend this event"
      redirect_to @event

  end
end
