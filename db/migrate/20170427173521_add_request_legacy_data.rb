class AddRequestLegacyData < ActiveRecord::Migration[5.0]
  def change
    add_column :requests, :legacy_data, :jsonb, null: false, default: {}
  end
end
