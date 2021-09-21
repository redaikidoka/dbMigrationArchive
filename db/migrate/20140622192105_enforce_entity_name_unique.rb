class EnforceEntityNameUnique < ActiveRecord::Migration
  def up
    add_index :entities, :name, unique: true
  end

  def down
    remove_index :entities, :name
  end
end
