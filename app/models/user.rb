class User < ApplicationRecord
    has_many :invitations, foreign_key: "attendee_id"
    has_many :attended_events, through: :invitations, class_name: "Event"
    has_many :organized_events, class_name: "Event", foreign_key: "organizer_id"
    has_secure_password


    def past_events
        self.attended_events.where('date < ?', Time.now)
      end
    
    def upcoming_events
        self.attended_events.where('date > ?', Time.now)
    end
end
