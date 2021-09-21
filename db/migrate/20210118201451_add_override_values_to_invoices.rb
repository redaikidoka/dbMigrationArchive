class AddOverrideValuesToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :override_page_count, :integer
    add_column :invoices, :override_cnr, :boolean
  end
end
