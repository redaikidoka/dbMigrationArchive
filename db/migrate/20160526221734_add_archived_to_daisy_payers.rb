class AddArchivedToDaisyPayers < ActiveRecord::Migration
  def change
    add_column :daisy_payers, :archived, :boolean, default: false
  end
end
