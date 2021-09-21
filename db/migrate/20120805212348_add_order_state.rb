class AddOrderState < ActiveRecord::Migration
  def up
    rename_column :orders, :status, :state
    change_column :orders, :state, :string, after: "venue_id"
  end

  def down
    rename_column :orders, :state, :status
  end
end
