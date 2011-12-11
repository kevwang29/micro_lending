class CreateEventLogs < ActiveRecord::Migration
  def change
    create_table :event_logs do |t|
      t.integer :luid
      t.text :event

      t.timestamps
    end
  end
end
