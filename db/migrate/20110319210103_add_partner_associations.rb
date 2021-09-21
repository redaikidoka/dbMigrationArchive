class AddPartnerAssociations < ActiveRecord::Migration
  def change
    add_column :users, :partner_id, :integer
    add_column :orders, :partner_id, :integer
    add_index :orders, :partner_id
  end
end
