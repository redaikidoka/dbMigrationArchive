class AddCancelledAtToPrintItem < ActiveRecord::Migration[5.2]
  def change
    add_column :print_items, :cancelled_at, :datetime
  end
end
