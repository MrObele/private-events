class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :description
      t.datetime :date
      t.string :location
      t.references :organizer, foreign_key: true
      t.references :attendees, foreign_key: true

      t.timestamps
    end
  end
end
