class AddStateMachineTimestampsToInvoices < ActiveRecord::Migration
  def change

    add_column :invoices, :unverified_at, :datetime
    add_column :invoices, :daisy_pending_at, :datetime
    add_column :invoices, :daisy_relayed_at, :datetime
    add_column :invoices, :daisy_reviewed_at, :datetime
    add_column :invoices, :daisy_submitted_at, :datetime
    add_column :invoices, :lob_pending_at, :datetime
    add_column :invoices, :lob_submitted_at, :datetime
    add_column :invoices, :fault_at, :datetime
    add_column :invoices, :sent_at, :datetime
  end
end
