class CreateEntityAddresses < ActiveRecord::Migration
  def change
    create_table :entity_addresses do |t|
      t.integer :entity_id
      t.integer :verified_by_id
      t.string :entity_address_type
      t.string :recipient
      t.string :company
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.text :note
      t.datetime :verified_at

      t.timestamps
    end

    add_index :entity_addresses, :entity_address_type
  end
end
