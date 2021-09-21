class UpdateCaseTriggersForInvoices3 < ActiveRecord::Migration[5.2]
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
            LEFT OUTER JOIN requests     ON requests.id = invoices.parent_id AND invoices.parent_type = 'Request'
            LEFT OUTER JOIN orders       ON orders.id = requests.order_id
            LEFT OUTER JOIN vouchers     ON vouchers.id = invoices.parent_id AND invoices.parent_type ='Voucher'
            INNER JOIN cases ON cases.id = kase_eyed AND cases.id IN (orders.case_id, vouchers.case_id)
          WHERE
            invoices.state != 'cancelled';
          RETURN result;
        END;
      $$ LANGUAGE plpgsql;
    SQL

    execute <<-SQL
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
          INNER JOIN orders   ON cases.id = orders.case_id
          INNER JOIN requests ON orders.id = requests.order_id
          WHERE requests.id = record.parent_id AND record.parent_type = 'Request';


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
