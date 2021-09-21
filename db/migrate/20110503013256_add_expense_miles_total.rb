class AddExpenseMilesTotal < ActiveRecord::Migration
  def up
    add_column :expenses, :miles_total, :integer, :after => :miles_end
  end

  def down
    remove_column :expenses, :miles_total
  end
end
