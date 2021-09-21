class ConvertInvoiceCapturesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :invoice_captures, :id, :bigint
    change_column :invoice_captures, :user_id, :bigint
  end
end
