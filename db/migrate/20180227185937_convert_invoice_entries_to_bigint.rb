class ConvertInvoiceEntriesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :invoice_entries, :id, :bigint
    change_column :invoice_entries, :invoice_id, :bigint
    change_column :invoice_entries, :invoice_capture_id, :bigint
    change_column :invoice_entries, :user_id, :bigint
  end
end
