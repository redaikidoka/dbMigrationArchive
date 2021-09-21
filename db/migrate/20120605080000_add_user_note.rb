class AddUserNote < ActiveRecord::Migration
  def change
    add_column :users, :note, :text, after: "last_sign_in_ip"
  end
end
