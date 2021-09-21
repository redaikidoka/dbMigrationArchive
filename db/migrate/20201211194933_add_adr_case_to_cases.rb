class AddAdrCaseToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :adr_case, :boolean, default: false
  end
end
