class ConvertEventsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :events, :id, :bigint
    change_column :events, :item_id, :bigint
    change_column :events, :user_id, :bigint
    change_column :events, :entity_contact_id, :bigint
    change_column :events, :event_code_id, :bigint
  end
end
