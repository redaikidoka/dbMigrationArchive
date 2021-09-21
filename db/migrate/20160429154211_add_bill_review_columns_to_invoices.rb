class AddBillReviewColumnsToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :sbr_at, :datetime, after: "invoice_date"
    add_column :invoices, :audit_complaint_at, :datetime, after: "sbr_at"

    add_index :invoices, :sbr_at
    add_index :invoices, :audit_complaint_at
  end
end
