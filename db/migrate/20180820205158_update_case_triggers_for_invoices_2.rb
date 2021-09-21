class UpdateCaseTriggersForInvoices2 < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL
      CREATE OR REPLACE FUNCTION calc_kase_amount_due_cents(kase_eyed bigint) RETURNS integer as $$
        DECLARE
          result integer;
        BEGIN
          SELECT
            COALESCE(SUM(invoices.amount_due_cents), 0) INTO result
          FROM
            invoices
            LEFT OUTER JOIN work_orders  ON work_orders.id = invoices.parent_id AND invoices.parent_type = 'WorkOrder'
            LEFT OUTER JOIN orders       ON orders.id = work_orders.order_id
            LEFT OUTER JOIN vouchers     ON vouchers.id = invoices.parent_id AND invoices.parent_type ='Voucher'
            INNER JOIN cases ON cases.id = kase_eyed AND cases.id IN (orders.case_id, vouchers.case_id)
          WHERE
            invoices.state != 'cancelled';
          RETURN result;
        END;
      $$ LANGUAGE plpgsql;
    SQL
  end

  def down
  end
end
