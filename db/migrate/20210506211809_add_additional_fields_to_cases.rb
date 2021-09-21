class AddAdditionalFieldsToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :holding_end_date, :date
    add_column :cases, :county, :string
    add_column :cases, :plaintiff, :string
    add_column :cases, :linked_case_id, :integer
    rename_column :cases, :defendant, :defendant_name

    add_index :cases, :linked_case_id
    rename_table :case_employers, :defendants
  end
end
