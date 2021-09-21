class UpdateUnmaterializedInvoiceRowsToVersion9 < ActiveRecord::Migration[5.1]
  def change
    update_view :unmaterialized_invoice_rows, version: 9, revert_to_version: 8
  end
end
