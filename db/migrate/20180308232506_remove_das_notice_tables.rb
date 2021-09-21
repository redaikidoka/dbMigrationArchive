class RemoveDasNoticeTables < ActiveRecord::Migration[5.1]
  def change
    drop_table :das_notices
    drop_table :das_addresses
    drop_table :das_notice_imports
  end
end
