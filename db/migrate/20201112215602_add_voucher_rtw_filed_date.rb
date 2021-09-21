class AddVoucherRtwFiledDate < ActiveRecord::Migration[5.2]
  def change
    add_column :vouchers, :rtw_filed_date, :date
  end
end
