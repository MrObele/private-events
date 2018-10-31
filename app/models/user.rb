class User < ApplicationRecord
    has_many :attended_events, through: :invitations, source: :event, foreign_key: "attendee_id"
    has_many :organized_events, class_name: "Event", foreign_key: "organizer_id"
    has_secure_password
end
