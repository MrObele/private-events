class User < ApplicationRecord
    # has_many :attended_events, through: :invitations, class_name: "Event"
    has_many :organized_events, class_name: "Event", foreign_key: "organizer_id"
    has_secure_password
end
