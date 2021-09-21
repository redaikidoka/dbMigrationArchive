class CreateUnmaterializedInvoiceRows < ActiveRecord::Migration[5.0]
  def change
    create_view :unmaterialized_invoice_rows
  end
end
