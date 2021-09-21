class DropCaseAmountDue < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL
      DROP TRIGGER update_kase_kase_order_amount_due_create_or_destroy ON orders;
      DROP TRIGGER update_kase_kase_order_amount_due_update ON orders;
      DROP TRIGGER update_kase_invoice_amount_due ON invoices;
      DROP FUNCTION invoice_amount_due_change();

      DROP FUNCTION calc_kase_amount_due_cents(bigint);
      DROP FUNCTION order_kase_id_change();
      DROP FUNCTION update_kase_amount_due_cents(bigint);
    SQL

    remove_column :cases, :amount_due_cents
  end
end
