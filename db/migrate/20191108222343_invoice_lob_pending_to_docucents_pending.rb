class InvoiceLobPendingToDocucentsPending < ActiveRecord::Migration[5.2]
  def change
    Rake::Task["single_purpose:invoice_update_to_docucents"].invoke
  end
end
