class AddEventCodeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :event_code_id, :integer
    add_column :request_notes, :event_code_id, :integer
  end
end
