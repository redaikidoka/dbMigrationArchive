class AddNullConstraintToStates < ActiveRecord::Migration
  def change

    # Fix reorders that persisted without a state
    Order.where(state: nil).find_each do |order|
      order.state = "pending"
      order.pending_at = order.created_at
      order.save(validate: false)
    end

    change_column :additional_sets, :state, :string, null: false
    change_column :events, :state, :string, null: false
    change_column :expenses, :state, :string, null: false
    change_column :invoices, :state, :string, null: false
    change_column :issues, :state, :string, null: false
    change_column :orders, :state, :string, null: false
    change_column :order_indices, :state, :string, null: false
    change_column :price_lists, :state, :string, null: false
    change_column :questions, :state, :string, null: false
    change_column :requests, :state, :string, null: false
    change_column :s3_relay_uploads, :state, :string, null: false
    change_column :signup_requests, :state, :string, null: false
    change_column :venues, :state, :string, null: false

  end
end
