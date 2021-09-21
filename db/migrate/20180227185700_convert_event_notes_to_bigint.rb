class ConvertEventNotesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :event_notes, :id, :bigint
    change_column :event_notes, :user_id, :bigint
    change_column :event_notes, :entity_contact_id, :bigint
    change_column :event_notes, :event_code_id, :bigint
    change_column :event_notes, :origin_id, :bigint
  end
end
