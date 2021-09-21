class AddAverageThresholdFieldsForEachState < ActiveRecord::Migration
  def change
    rename_column :accounts, :averages_caution, :entered_averages_caution
    rename_column :accounts, :averages_warn, :entered_averages_warn
    add_column :accounts, :served_averages_caution, :integer
    add_column :accounts, :served_averages_warn, :integer
    add_column :accounts, :ready_averages_caution, :integer
    add_column :accounts, :ready_averages_warn, :integer
    add_column :accounts, :copied_retrieved_averages_caution, :integer
    add_column :accounts, :copied_retrieved_averages_warn, :integer
    add_column :accounts, :billed_averages_caution, :integer
    add_column :accounts, :billed_averages_warn, :integer
    add_column :accounts, :delivered_averages_caution, :integer
    add_column :accounts, :delivered_averages_warn, :integer
  end
end
