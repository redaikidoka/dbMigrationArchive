class AddImportedFlagToDasCalls < ActiveRecord::Migration
  def change
    add_column :das_calls, :nl_imported, :boolean
  end
end
