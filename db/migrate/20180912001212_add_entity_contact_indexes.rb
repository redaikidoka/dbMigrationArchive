class AddEntityContactIndexes < ActiveRecord::Migration[5.2]
  def change
    add_index :entity_contacts, :contact_type
    add_index :entity_contacts, :deleted_at, where: "deleted_at is null"
  end
end
