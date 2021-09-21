class RenameOrderDueOnToNeededOn < ActiveRecord::Migration
  def up
    rename_column :orders, :due_on, :needed_on
  end

  def down
    rename_column :orders, :needed_on, :due_on
  end
end
