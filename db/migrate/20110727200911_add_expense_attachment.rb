class AddExpenseAttachment < ActiveRecord::Migration
  def up
    add_column :expenses, :attachment, :string
  end

  def down
    remove_column :expenses, :attachment
  end
end
