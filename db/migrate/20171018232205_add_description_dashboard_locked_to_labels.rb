class AddDescriptionDashboardLockedToLabels < ActiveRecord::Migration[5.1]
  def change
    add_column :labels, :description, :text
    add_column :labels, :dashboard, :boolean, default: false
    add_index :labels, :dashboard
    add_column :labels, :locked, :boolean, default: false
  end
end
