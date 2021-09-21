class ReplaceWorkOrderInvoiceParents < ActiveRecord::Migration[5.2]
  def up
    say_with_time "Assigning Request as Parent on Work Order Invoices" do
      ActiveRecord::Base.connection.execute(
        <<-SQL
          UPDATE invoices
          SET parent_type = 'Request', parent_id = work_orders.request_id
          FROM work_orders
          WHERE invoices.parent_type = 'WorkOrder' AND invoices.parent_id = work_orders.id
        SQL
      )
    end
  end
end
