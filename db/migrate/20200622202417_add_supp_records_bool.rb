class AddSuppRecordsBool < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :notifications_on_supplemental, :bool, default: false
  end
end
