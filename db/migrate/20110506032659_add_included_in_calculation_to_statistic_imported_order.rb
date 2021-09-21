class AddIncludedInCalculationToStatisticImportedOrder < ActiveRecord::Migration
  def change
    add_column :statistic_imported_orders, :included_in_calculation, :boolean, :default => 0, :null => false
  end
end
