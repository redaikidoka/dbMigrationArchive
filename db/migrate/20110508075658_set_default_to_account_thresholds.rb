class SetDefaultToAccountThresholds < ActiveRecord::Migration
  def change
    change_column :accounts, :entered_averages_caution, :integer, :default => 0, :null => false
    change_column :accounts, :entered_averages_warn, :integer, :default => 0, :null => false
    change_column :accounts, :served_averages_caution, :integer, :default => 0, :null => false
    change_column :accounts, :served_averages_warn, :integer, :default => 0, :null => false
    change_column :accounts, :ready_averages_caution, :integer, :default => 0, :null => false
    change_column :accounts, :ready_averages_warn, :integer, :default => 0, :null => false
    change_column :accounts, :copied_retrieved_averages_caution, :integer, :default => 0, :null => false
    change_column :accounts, :copied_retrieved_averages_warn, :integer, :default => 0, :null => false
    change_column :accounts, :billed_averages_caution, :integer, :default => 0, :null => false
    change_column :accounts, :billed_averages_warn, :integer, :default => 0, :null => false
    change_column :accounts, :delivered_averages_caution, :integer, :default => 0, :null => false
    change_column :accounts, :delivered_averages_warn, :integer, :default => 0, :null => false
  end
end
