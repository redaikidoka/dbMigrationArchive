class RefreshMaterializedInvoiceRowsVersion9 < ActiveRecord::Migration[5.1]
  def change
    say_with_time "refreshing MaterializedInvoiceRows" do
      execute <<-SQL
        SELECT refresh_all_materialized_invoice_rows();
      SQL
    end
  end
end
