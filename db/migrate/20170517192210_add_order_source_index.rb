class AddOrderSourceIndex < ActiveRecord::Migration[5.0]
  def change
    add_index :orders, :source
  end
end
