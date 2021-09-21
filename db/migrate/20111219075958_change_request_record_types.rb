class ChangeRequestRecordTypes < ActiveRecord::Migration
  def up
    remove_column :requests, :record_type
    add_column :requests, :record_types, :text, after: "location_id"
  end

  def down
    remove_column :requests, :record_types
    add_column :requests, :record_type, :string, after: "location_id"
  end
end
