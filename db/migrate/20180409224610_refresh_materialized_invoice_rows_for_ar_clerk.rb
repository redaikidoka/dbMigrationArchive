class RefreshMaterializedInvoiceRowsForArClerk < ActiveRecord::Migration[5.1]
  def change
    # resync all materialized_invoice_rows with current data
    execute <<-SQL
      SELECT refresh_all_materialized_invoice_rows();
    SQL
  end
end
