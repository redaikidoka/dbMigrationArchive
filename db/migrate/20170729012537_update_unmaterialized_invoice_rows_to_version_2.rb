class UpdateUnmaterializedInvoiceRowsToVersion2 < ActiveRecord::Migration[5.0]
  def up
    update_view :unmaterialized_invoice_rows, version: 2, revert_to_version: 1

    execute <<-SQL
      SELECT refresh_all_materialized_invoice_rows();
    SQL
  end

  def down
    update_view :unmaterialized_invoice_rows, version: 1, revert_to_version: 2
  end
end
