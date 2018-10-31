class AddIndexToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :organizer_id, :integer
  end
  add_index :events, :organizer_id
end
