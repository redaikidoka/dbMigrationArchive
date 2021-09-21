class AddSpPriceListAndItems < ActiveRecord::Migration[5.2]
  def change
    Rake::Task["single_purpose:populate_fee_schedule_sop"].invoke
  end
end
