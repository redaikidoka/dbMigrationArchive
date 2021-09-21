class AddArchivedEntityContact < ActiveRecord::Migration
  def change
    add_column :entity_contacts, :deleted_at, :datetime
  end
end
