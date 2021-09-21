class UpdateUnmaterializedInvoiceRowsToVersion10 < ActiveRecord::Migration[5.2]
  def change
    update_view :unmaterialized_invoice_rows, version: 10, revert_to_version: 9

    execute <<-SQL
      SELECT refresh_all_materialized_invoice_rows();
    SQL
  end
end
