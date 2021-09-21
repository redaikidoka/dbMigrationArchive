class AddDwcAasmStateToJetSubmissions < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_submissions, :dwc_pending_queue_at, :datetime
  end
end
