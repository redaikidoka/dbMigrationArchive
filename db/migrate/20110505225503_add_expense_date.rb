class AddExpenseDate < ActiveRecord::Migration
  def up
    add_column :expenses, :date, :date
  end

  def down
    remove_column :expenses, :date
  end
end
