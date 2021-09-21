class AddHivoFieldsToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :hivo_tag, :boolean, default: false
    add_column :accounts, :hivo_start, :datetime
    add_column :accounts, :hivo_end, :datetime
  end
end
