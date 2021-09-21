class RemoveExpenseAttachment < ActiveRecord::Migration[5.2]
  def change
    remove_column :expenses, :attachment
  end
end
