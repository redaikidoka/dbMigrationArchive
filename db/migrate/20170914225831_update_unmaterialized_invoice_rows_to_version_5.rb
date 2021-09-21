class UpdateUnmaterializedInvoiceRowsToVersion5 < ActiveRecord::Migration[5.0]
  def change
    update_view :unmaterialized_invoice_rows, version: 5, revert_to_version: 4
  end
end
