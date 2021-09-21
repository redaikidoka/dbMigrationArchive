class CreateContactSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_selections do |t|
      t.string :associable_type, null: false
      t.integer :associable_id, null: false
      t.references :contact, index: true, null: false

      t.timestamps
    end

    add_index :contact_selections, [:associable_type, :associable_id]
  end
end
