class RemoveHearingDateFromOrders < ActiveRecord::Migration
  def up
    remove_column :orders, :hearing_date
  end

  def down
    add_column :orders, :hearing_date, :string, after: "due_on"
  end
end
