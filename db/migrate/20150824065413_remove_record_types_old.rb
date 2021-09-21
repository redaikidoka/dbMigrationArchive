class RemoveRecordTypesOld < ActiveRecord::Migration
  def change
    remove_column :requests, :record_types_old
  end
end
