class AddDateOfServiceToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :date_of_service, :date
    add_index :invoices, :date_of_service
  end
end
