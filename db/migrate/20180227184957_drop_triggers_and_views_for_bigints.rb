class DropTriggersAndViewsForBigints < ActiveRecord::Migration[5.1]
  def up
    drop_view :unmaterialized_invoice_rows

    execute <<-SQL
      DROP TRIGGER update_kase_kase_order_amount_due_update ON orders;
    SQL
  end
end
