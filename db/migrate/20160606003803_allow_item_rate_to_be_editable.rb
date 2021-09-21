class AllowItemRateToBeEditable < ActiveRecord::Migration
  def change
    add_column :items, :rate_editable, :boolean, default: false, null: false
  end
end
