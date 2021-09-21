class AddErrorMessagesToJetResponses < ActiveRecord::Migration[5.2]
  def change
    add_column :jet_responses, :error_messages, :string, array: true, default: []
  end
end
