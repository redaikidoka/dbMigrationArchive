class AddOrderLegacyData < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :legacy_data, :jsonb, null: false, default: {}
  end
end
