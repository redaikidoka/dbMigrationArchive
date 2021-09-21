class AddProcessedAtToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :processed_at, :datetime, index: true

    now = Time.zone.now
    Case.in_process.where(processed_at: nil).in_batches.update_all(processed_at: now)
  end
end
