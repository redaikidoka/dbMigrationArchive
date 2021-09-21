class RemoveCanLoginColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :can_login
  end
end
