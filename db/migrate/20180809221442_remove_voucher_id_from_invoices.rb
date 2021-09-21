class RemoveVoucherIdFromInvoices < ActiveRecord::Migration[5.2]
  def change
    remove_reference :invoices, :voucher, index: true
  end
end
