class AddDeliveryOptionDefaultsToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :default_option_cd, :boolean, null: false, default: false
    add_column :accounts, :default_option_paper, :boolean, null: false, default: false
    add_column :accounts, :default_option_fax, :boolean, null: false, default: false
    add_column :accounts, :default_option_indexing, :boolean, null: false, default: false
    add_column :accounts, :default_option_page_numbering, :boolean, null: false, default: false
  end
end
