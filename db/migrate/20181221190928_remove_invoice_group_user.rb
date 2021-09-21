class RemoveInvoiceGroupUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :invoice_groups, :user_id
  end
end
