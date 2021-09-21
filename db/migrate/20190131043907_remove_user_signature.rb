class RemoveUserSignature < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :signature
  end
end
