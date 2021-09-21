class AddOrderedBySentToAndBilledToToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :ordered_by_cache, :json, default: "{}"
    add_column :invoices, :sent_to_cache, :json, default: "{}"
    add_column :invoices, :billed_to_cache, :json, default: "{}"
  end
end
