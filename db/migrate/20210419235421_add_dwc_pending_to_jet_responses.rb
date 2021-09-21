class AddDwcPendingToJetResponses < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_responses, :dwc_pending, :boolean, default: false
  end
end
