class AddMeruscaseAccessColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :mc_access, :boolean, default: false
  end
end
