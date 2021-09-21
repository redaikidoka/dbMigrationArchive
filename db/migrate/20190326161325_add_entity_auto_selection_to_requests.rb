class AddEntityAutoSelectionToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :entity_auto_selection, :jsonb, null: false, default: {}
  end
end
