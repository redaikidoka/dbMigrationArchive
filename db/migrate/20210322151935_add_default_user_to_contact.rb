class AddDefaultUserToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :default_user_to_contact_id, :bigint
    add_index :users, :default_user_to_contact_id
  end
end
