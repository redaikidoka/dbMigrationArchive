class UpdateUnmaterializedInvoiceRowsToVersion7 < ActiveRecord::Migration[5.1]
  def change
    update_view :unmaterialized_invoice_rows, version: 7, revert_to_version: 6
  end
end
