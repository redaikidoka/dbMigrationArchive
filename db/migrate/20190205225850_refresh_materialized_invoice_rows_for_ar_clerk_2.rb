class RefreshMaterializedInvoiceRowsForArClerk2 < ActiveRecord::Migration[5.2]
  def up
    # resync all materialized_invoice_rows with current data
    execute <<-SQL
      SELECT refresh_all_materialized_invoice_rows();
    SQL
  end
end
