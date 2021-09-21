class AddStatusAndSubmissionDateToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :status, :string
    add_index :expenses, :status

    add_column :expenses, :submitted_at, :datetime
    add_column :expenses, :vendor, :string
  end
end
