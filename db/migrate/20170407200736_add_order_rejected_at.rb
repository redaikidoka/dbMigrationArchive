class AddOrderRejectedAt < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :rejected_at, :datetime
  end
end
