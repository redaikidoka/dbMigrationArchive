class AddContactAndNotesToVoucherSchools < ActiveRecord::Migration[5.2]
  def change
    add_column :voucher_schools, :contact, :text
    add_column :voucher_schools, :notes, :text
  end
end
