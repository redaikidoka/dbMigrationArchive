class AddJetfilerEnabledToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :jetfiler_enabled, :boolean, null: false, default: false
  end
end
