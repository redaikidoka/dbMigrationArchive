class AddNoResponseEmailSentToJetPackets < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_packets, :no_response_email_sent, :boolean, null: false, default: false
  end
end
