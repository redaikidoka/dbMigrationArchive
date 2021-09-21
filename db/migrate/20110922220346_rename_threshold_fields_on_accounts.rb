class RenameThresholdFieldsOnAccounts < ActiveRecord::Migration
  def change
    rename_column :accounts, :entered_averages_caution, :issued_averages_caution
    rename_column :accounts, :entered_averages_warn, :issued_averages_warn
    rename_column :accounts, :copied_retrieved_averages_caution, :completed_averages_caution
    rename_column :accounts, :copied_retrieved_averages_warn, :completed_averages_warn
    rename_column :accounts, :billed_averages_caution, :shipped_averages_caution
    rename_column :accounts, :billed_averages_warn, :shipped_averages_warn
    remove_column :accounts, :delivered_averages_caution
    remove_column :accounts, :delivered_averages_warn
  end
end
