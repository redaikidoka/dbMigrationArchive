class AddOrderIndexes < ActiveRecord::Migration
  def change
    add_index :orders, :created_at
    add_index :orders, :received_on
  end
end
