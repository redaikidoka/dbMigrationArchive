class AddContactsToVouchers < ActiveRecord::Migration[5.2]
  def change
    add_column :vouchers, :contact_id, :bigint
    add_column :vouchers, :requesting_attorney_id, :bigint
  end
end
