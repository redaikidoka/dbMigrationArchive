class AddVoucherActivityToCommunications < ActiveRecord::Migration[5.2]
  def change
    add_column :communications, :voucher_activity, :boolean, default: false
  end
end
