class UpdateCaseTriggersForInvoices < ActiveRecord::Migration[5.2]
  def up

    execute <<-SQL
      CREATE OR REPLACE FUNCTION calc_kase_amount_due_cents(kase_eyed bigint) RETURNS integer as $$
        DECLARE
          result integer;
        BEGIN

          --- Gets the case regardless of work_order/request/voucher/add_set source
          WITH invoice_parent_case AS (
            SELECT
              COALESCE(case_1.id, case_2.id) AS case_id,
              invoices.id AS invoice_id
            FROM
              invoices
              -- for request parent (work order temporarily)
              LEFT OUTER JOIN work_orders  ON work_orders.id = invoices.parent_id AND invoices.parent_type = 'WorkOrder'
              LEFT OUTER JOIN orders       ON orders.id = work_orders.order_id
              LEFT OUTER JOIN cases case_1 ON case_1.id = orders.case_id
              -- for voucher parent
              LEFT OUTER JOIN vouchers     ON vouchers.id = invoices.parent_id AND invoices.parent_type ='Voucher'
              LEFT OUTER JOIN cases case_2 ON case_2.id = vouchers.case_id
          )

          SELECT COALESCE(SUM(invoices.amount_due_cents), 0) INTO result
          FROM invoices
          INNER JOIN invoice_parent_case ON invoice_parent_case.invoice_id = invoices.id AND invoice_parent_case.case_id = kase_eyed
          WHERE invoices.state != 'cancelled';

          RETURN result;
        END;
      $$ LANGUAGE plpgsql;


      CREATE OR REPLACE FUNCTION invoice_amount_due_change() RETURNS trigger as $$
        DECLARE
          record invoices%ROWTYPE;
        BEGIN

          IF TG_OP = 'INSERT' OR TG_OP = 'UPDATE' THEN
            record := NEW;
          ELSIF TG_OP = 'DELETE' THEN
            record := OLD;
          ELSE
            return NULL;
          END IF;

          PERFORM update_kase_amount_due_cents(cases.id)
          FROM cases
          INNER JOIN orders ON cases.id = orders.case_id
          INNER JOIN work_orders ON orders.id = work_orders.order_id
          WHERE work_orders.id = record.parent_id AND record.parent_type = 'WorkOrder';


          PERFORM update_kase_amount_due_cents(cases.id)
          FROM cases
          INNER JOIN vouchers ON cases.id = vouchers.case_id
          WHERE vouchers.id = record.parent_id AND record.parent_type = 'Voucher';

          RETURN NULL;
        END;
      $$ LANGUAGE plpgsql;
    SQL
  end

  def down
  end
end
