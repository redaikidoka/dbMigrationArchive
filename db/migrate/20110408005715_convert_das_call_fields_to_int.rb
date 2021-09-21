class ConvertDasCallFieldsToInt < ActiveRecord::Migration
  def up
    change_column :das_calls, :callorderer, :integer
    change_column :das_calls, :invoice_number_for_call, :integer
  end
  
  def down
    change_column :das_calls, :callorderer, :string
    change_column :das_calls, :invoice_number_for_call, :string
  end
end
