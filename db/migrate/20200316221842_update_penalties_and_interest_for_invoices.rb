class UpdatePenaltiesAndInterestForInvoices < ActiveRecord::Migration[5.2]
  def change
    Rake::Task["single_purpose:backfill_invoice_penalties_and_interests"].invoke
  end
end
