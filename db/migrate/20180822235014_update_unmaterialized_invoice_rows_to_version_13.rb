class UpdateUnmaterializedInvoiceRowsToVersion13 < ActiveRecord::Migration[5.2]
  def change
    update_view :unmaterialized_invoice_rows, version: 13, revert_to_version: 12
  end
end
