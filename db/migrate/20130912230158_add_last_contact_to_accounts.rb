class AddLastContactToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :last_contact_on, :date
    add_column :accounts, :last_contact_type, :string
  end
end
