class AddTransactionDateToLineItem < ActiveRecord::Migration[5.2]
  def change
    add_column :line_items, :transaction_date, :date
    add_index :line_items, [:id, :transaction_date]
  end
end
