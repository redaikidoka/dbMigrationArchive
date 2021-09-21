class ConvertOrdersToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :orders, :id, :bigint
    change_column :orders, :account_id, :bigint
    change_column :orders, :parent_id, :bigint
    change_column :orders, :created_by_id, :bigint
    change_column :orders, :user_id, :bigint
    change_column :orders, :venue_id, :bigint
    change_column :orders, :partner_id, :bigint
    change_column :orders, :processed_by_id, :bigint
    change_column :orders, :requesting_attorney_id, :bigint
    change_column :orders, :holding_request_id, :bigint
    # 20180517 dannyb: Preorders have been removed from the system PR # 1924
    # change_column :orders, :preorder_applicant_id, :bigint
    change_column :orders, :case_id, :bigint
  end
end
