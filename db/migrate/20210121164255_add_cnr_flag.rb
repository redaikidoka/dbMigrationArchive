class AddCnrFlag < ActiveRecord::Migration[5.2]
  def change
    add_column :records_packets, :cnr, :boolean, default: false
  end
end
