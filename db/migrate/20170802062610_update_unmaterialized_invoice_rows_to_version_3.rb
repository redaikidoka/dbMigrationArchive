class UpdateUnmaterializedInvoiceRowsToVersion3 < ActiveRecord::Migration[5.0]
  def up
    update_view :unmaterialized_invoice_rows, version: 3, revert_to_version: 2
  end

  def down
    update_view :unmaterialized_invoice_rows, version: 2, revert_to_version: 3
  end
end
