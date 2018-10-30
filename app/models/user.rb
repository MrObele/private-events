class User < ApplicationRecord
    has_many :events, foreign_key: :organizer_id
    has_many :invitations, foreign_key: :attendee_id
    has_many :attended_events, through: :invitations
    has_secure_password
end
