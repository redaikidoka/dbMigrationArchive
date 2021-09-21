class CreateEntitySelections < ActiveRecord::Migration
  def change
    create_table :entity_selections do |t|
      t.integer :request_id
      t.integer :entity_id
      t.integer :care_address_id
      t.integer :records_address_id
      t.integer :serve_address_id

      t.timestamps
    end

    add_index :entity_selections, :request_id
    add_index :entity_selections, :entity_id
    add_index :entity_selections, :care_address_id
    add_index :entity_selections, :records_address_id
    add_index :entity_selections, :serve_address_id
  end
end
