class AddAlternateEmailToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :alternate_email, :string, after: "alternate_zip"
  end
end
