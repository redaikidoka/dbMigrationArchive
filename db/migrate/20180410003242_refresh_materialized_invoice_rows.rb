class RefreshMaterializedInvoiceRows < ActiveRecord::Migration[5.1]
  def change
    execute <<-SQL
      SELECT refresh_all_materialized_invoice_rows();
    SQL
  end
end
