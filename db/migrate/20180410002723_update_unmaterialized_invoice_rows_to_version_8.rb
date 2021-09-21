class UpdateUnmaterializedInvoiceRowsToVersion8 < ActiveRecord::Migration[5.1]
  def change
    update_view :unmaterialized_invoice_rows, version: 8, revert_to_version: 7
  end
end
