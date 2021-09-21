class AddStateToOcrs < ActiveRecord::Migration[5.2]
  def change
    add_column :ocrs, :state, :string, default: "pending", index: true, null: false

    # AASM State transition timestamps
    add_column :ocrs, :scheduled_at, :datetime
    add_column :ocrs, :import_started_at, :datetime
    add_column :ocrs, :imported_at, :datetime
    add_column :ocrs, :failed_import_at, :datetime
  end
end
