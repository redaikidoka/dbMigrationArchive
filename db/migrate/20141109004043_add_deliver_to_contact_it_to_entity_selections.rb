class AddDeliverToContactItToEntitySelections < ActiveRecord::Migration
  def change
    add_column :entity_selections, :deliver_to_contact_id, :integer
    add_index :entity_selections, :deliver_to_contact_id
  end
end
