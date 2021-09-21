class AddMissingIndexes < ActiveRecord::Migration
  def change

    # Parties are almost exclusively searched by type
    add_index :parties, :type

    # Add indexes on associations that are queried against
    add_index :parties, :order_id
    add_index :parties, :parent_id
    add_index :work_orders, :invoice_id
    add_index :cases, :ar_clerk_id
    add_index :orders, :account_id

    # order type is a common filter query that benefits form a index
    add_index :orders, :order_type

    add_index :invoices, :amount_due_cents
    add_index :invoices, :total_cents
    add_index :invoices, :invoice_date
  end
end
