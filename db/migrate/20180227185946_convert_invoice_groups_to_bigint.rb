class ConvertInvoiceGroupsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :invoice_groups, :id, :bigint
    change_column :invoice_groups, :user_id, :bigint
    change_column :invoice_groups, :invoice_ids, :bigint, array: true, default: []
  end
end
