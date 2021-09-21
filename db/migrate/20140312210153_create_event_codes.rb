class CreateEventCodes < ActiveRecord::Migration
  def up
    create_table :event_codes do |t|
      t.string :code
      t.string :legacy_code
      t.integer :event_category_id
      t.string :name
      t.hstore  :centers
      t.datetime :deleted_at

      t.timestamps
    end

    add_index :event_codes, :code
    add_index :event_codes, :legacy_code
    add_index :event_codes, :name
    execute "CREATE INDEX event_codes_gin_centers ON event_codes USING GIN(centers)"
  end

  def down
    remove_index :event_codes, :code
    remove_index :event_codes, :legacy_code
    remove_index :event_codes, :name
    execute "DROP INDEX event_codes_gin_centers"
    drop_table :event_codes
  end
end
