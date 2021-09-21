class ConvertPreordersToBigint < ActiveRecord::Migration[5.1]
  def up
    # 20180517 dannyb: Preorders have been removed from the system PR # 1924
    # change_column :preorders, :id, :bigint
    # change_column :preorders, :created_by_id, :bigint
    # change_column :preorders, :processed_by_id, :bigint
    # change_column :preorders, :account_id, :bigint
    # change_column :preorders, :requesting_attorney_id, :bigint
    # change_column :preorders, :user_to_contact_id, :bigint
  end
end
