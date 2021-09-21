class AddEntityExcludeBulkRebillingFlag < ActiveRecord::Migration[5.1]
  def change
    add_column :entities, :exclude_bulk_rebilling, :boolean, null: false, default: false
  end
end
