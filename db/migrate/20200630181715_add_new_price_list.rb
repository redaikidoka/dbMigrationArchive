class AddNewPriceList < ActiveRecord::Migration[5.2]
  def change
    Rake::Task["single_purpose:price_list_county_of_sac"].invoke
  end
end
