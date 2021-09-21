class AddAccountDefaultOrderTypeAndVenue < ActiveRecord::Migration
  def up
    add_column :accounts, :default_order_type, :string, after: "practice_type_other"
    add_column :accounts, :default_venue_id, :integer, after: "default_order_type"
  end

  def down
    remove_column :accounts, :default_venue_id
    remove_column :accounts, :default_order_type
  end
end
