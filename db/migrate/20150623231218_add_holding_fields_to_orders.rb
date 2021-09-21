class AddHoldingFieldsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :application_filed_on, :date
    add_column :orders, :holding_request_id, :integer
    add_column :orders, :holding_start_date, :date
    add_column :orders, :holding_end_date, :date
  end
end
