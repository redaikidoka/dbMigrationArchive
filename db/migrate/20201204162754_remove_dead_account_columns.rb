class RemoveDeadAccountColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :accounts, :issued_averages_caution, :int
    remove_column :accounts, :issued_averages_warn, :int
    remove_column :accounts, :completed_averages_caution, :int
    remove_column :accounts, :completed_averages_warn, :int
    remove_column :accounts, :served_averages_caution, :int
    remove_column :accounts, :served_averages_warn, :int
    remove_column :accounts, :ready_averages_caution, :int
    remove_column :accounts, :ready_averages_warn, :int
    remove_column :accounts, :shipped_averages_caution, :int
    remove_column :accounts, :shipped_averages_warn, :int
    remove_column :accounts, :counts_caution, :int
    remove_column :accounts, :counts_warn, :int
    
    remove_column :users, :url, :string
    remove_column :users, :type_of_law, :string
  end
end