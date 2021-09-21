class AddFlagCaseToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :flag_case, :boolean, default: false
  end
end
