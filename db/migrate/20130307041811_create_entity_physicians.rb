class CreateEntityPhysicians < ActiveRecord::Migration
  def change
    create_table :entity_contacts do |t|
      t.integer :entity_id
      t.string :name

      t.timestamps
    end

    add_index :entity_contacts, :entity_id
    add_index :entity_contacts, :name
  end
end
