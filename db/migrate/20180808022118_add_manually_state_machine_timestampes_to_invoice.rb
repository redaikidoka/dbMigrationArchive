class AddManuallyStateMachineTimestampesToInvoice < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :manually_pending_at, :datetime
    add_column :invoices, :manually_submitted_at, :datetime
  end
end
