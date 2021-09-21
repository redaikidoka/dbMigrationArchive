class AddResubmitCount < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_packets, :resubmit_count, :integer, default: 0
  end
end
