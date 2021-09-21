class AddInvoiceCaptureRefNumberIndex < ActiveRecord::Migration
  def change
    add_index :invoice_captures, :ref_number
  end
end
