class Event < ApplicationRecord
  belongs_to :organizer, class_name: "User", foreign_key: "organizer_id"


  # has_many :attendees, through: :invitations, class_name: "User"
end