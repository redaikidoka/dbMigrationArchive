class UpdateDevise < ActiveRecord::Migration
  def up
    remove_column :people, :password_salt
  end

  def down
    add_column :people, :password_salt, :string
  end
end
