class UpdateUnmaterializedInvoiceRowsToVersion4 < ActiveRecord::Migration[5.0]
  def up
    replace_view :unmaterialized_invoice_rows, version: 4, revert_to_version: 3
  end

  def down
    update_view :unmaterialized_invoice_rows, version: 3, revert_to_version: 4
  end
end
