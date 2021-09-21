class AddFlagCaseReasonToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :flag_case_reason, :string
  end
end
