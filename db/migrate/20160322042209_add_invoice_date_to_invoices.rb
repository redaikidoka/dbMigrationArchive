class AddInvoiceDateToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :invoice_date, :date

    Invoice.where.not(finalized_at: nil).find_each do |i|
      i.update(invoice_date: i.finalized_at.pacific.to_date)
    end
  end
end
