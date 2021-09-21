class AddAccountProfileField < ActiveRecord::Migration
  def change
    add_column :accounts, :profile, :text
  end
end
