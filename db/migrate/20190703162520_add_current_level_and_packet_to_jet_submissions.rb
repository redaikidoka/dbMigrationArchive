class AddCurrentLevelAndPacketToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :current_level, :integer, null: true
    add_column :jet_submissions, :jet_packet_id, :integer
    add_index :jet_submissions, :jet_packet_id
  end
end
