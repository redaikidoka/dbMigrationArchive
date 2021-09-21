class UpdateInvoiceBtachesForBatchType < ActiveRecord::Migration[5.2]
  def change
    Rake::Task["single_purpose:invoice_batch_populate_type"].invoke
  end
end
