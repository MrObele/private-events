class Event < ApplicationRecord
  has_many :invitations, foreign_key: "attended_event_id"
  belongs_to :organizer, class_name: "User", foreign_key: "organizer_id"
  has_many :attendees, through: :invitations, class_name: 'User'
  
  def past_events
    Event.where(:date < Time.now)
  end

  def upcoming_event
    Event.where(:date > Time.now)
  end
end