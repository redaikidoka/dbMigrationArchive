class ConvertRequestRecordTypesDataType < ActiveRecord::Migration
  def change
    rename_column :requests, :record_types, :record_types_old
    add_column :requests, :record_types, :string, array: true, default: []
  end
end
