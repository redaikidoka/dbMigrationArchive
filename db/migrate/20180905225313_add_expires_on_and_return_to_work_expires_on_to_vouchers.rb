class AddExpiresOnAndReturnToWorkExpiresOnToVouchers < ActiveRecord::Migration[5.2]
  def change
    add_column :vouchers, :expires_on, :date
    add_column :vouchers, :return_to_work_expires_on, :date
  end
end
