class AddJobCompleteAtToImportedOrder < ActiveRecord::Migration
  def change
    add_column :imported_orders, :job_complete_at, :datetime
  end
end
