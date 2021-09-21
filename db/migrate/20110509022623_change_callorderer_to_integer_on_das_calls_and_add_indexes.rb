class ChangeCallordererToIntegerOnDasCallsAndAddIndexes < ActiveRecord::Migration
  def up
    change_column :das_calls, :callorderer, :integer
    add_index :das_calls, :id
    add_index :das_calls, :callorderer
    add_index :das_calls, :invoice_number_for_call
    add_index :imported_orders, :completed
  end

  def down
    change_column :das_calls, :callorderer, :string
    remove_index :das_calls, :id
    remove_index :das_calls, :callorderer
    remove_index :das_calls, :invoice_number_for_call
    remove_index :imported_orders, :completed
  end
end
