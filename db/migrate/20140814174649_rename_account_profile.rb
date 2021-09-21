class RenameAccountProfile < ActiveRecord::Migration
  def up
    rename_column :accounts, :profile, :ordering_instructions
  end
end
