class AddPerformanceIndexToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_index(:invoices, [:followup_on, :id], order: {followup_on: :asc, id: :desc})
  end
end
