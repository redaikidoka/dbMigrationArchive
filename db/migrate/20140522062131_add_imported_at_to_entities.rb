class AddImportedAtToEntities < ActiveRecord::Migration
  def change
    add_column :entities, :imported_at, :datetime
    add_column :entity_addresses, :imported_at, :datetime
  end
end
