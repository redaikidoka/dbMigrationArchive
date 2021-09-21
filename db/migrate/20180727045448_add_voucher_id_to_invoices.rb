class AddVoucherIdToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_reference :invoices, :voucher, index: true
  end
end
