class RemoveOldColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :hired_on_desc, :string
    remove_column :users, :hired_on, :date
    remove_column :users, :notes, :text
  end
end
