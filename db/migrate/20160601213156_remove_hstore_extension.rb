class RemoveHstoreExtension < ActiveRecord::Migration
  def self.up
    execute "DROP EXTENSION IF EXISTS hstore"
  end

  def self.down
    execute "CREATE EXTENSION IF NOT EXISTS hstore"
  end
end
