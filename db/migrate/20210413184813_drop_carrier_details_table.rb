class DropCarrierDetailsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :carrier_details
  end
end
