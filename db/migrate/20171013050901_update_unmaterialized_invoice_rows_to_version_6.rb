class UpdateUnmaterializedInvoiceRowsToVersion6 < ActiveRecord::Migration[5.1]
  def change
    update_view :unmaterialized_invoice_rows, version: 6, revert_to_version: 5
  end
end
