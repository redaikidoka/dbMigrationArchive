class AddBillingAddressIdToEntitySelections < ActiveRecord::Migration
  def change
    add_column :entity_selections, :billing_address_id, :integer, after: "care_address_id"
    add_index :entity_selections, :billing_address_id
  end
end
