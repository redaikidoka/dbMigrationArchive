class AddExternalPartnerAttrsToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :external_account_id, :string
    add_column :orders, :external_case_id, :string
  end
end
