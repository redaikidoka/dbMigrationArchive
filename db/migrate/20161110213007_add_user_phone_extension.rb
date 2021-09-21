class AddUserPhoneExtension < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone_extension, :integer
  end
end
