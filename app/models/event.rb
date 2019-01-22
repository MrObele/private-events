class Event < ApplicationRecord
  has_many :invitations, foreign_key: "attended_event_id"
  belongs_to :organizer, class_name: "User", foreign_key: "organizer_id"
  has_many :attendees, through: :invitations, class_name: 'User'

  scope :past, -> {where("date < :now",{now: Time.now})}
  scope :upcoming,  -> {where("date > :now",{now: Time.now})}

  # def self.past
  #   Event.where('date < ?', Time.now)
  # end

  # def self.upcoming
  #   Event.where('date > ?', Time.now)
  # end
end