class AddDisplayNameToEntities < ActiveRecord::Migration
  def change
    add_column :entities, :short_name, :string, limit: 50
  end
end
