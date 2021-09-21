class AddOrderLegacyAt < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :legacy_at, :datetime
  end
end
