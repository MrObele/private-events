class AddAttendeeAndAttendedEventIndicesToInvitation < ActiveRecord::Migration[5.2]
  def change
    add_column :invitations, :attendee_id, :integer
    add_column :invitations, :attended_event_id, :integer
  end
  add_index :invitations, [:attended_event_id, :attendee_id]
end
