class AddEventsIndexes < ActiveRecord::Migration[5.2]
  def change
    add_index :events, :user_id
    add_index :events, :event_type
  end
end
