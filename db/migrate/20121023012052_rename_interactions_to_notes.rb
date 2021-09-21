class RenameInteractionsToNotes < ActiveRecord::Migration
  def up
    rename_table  :interactions, :notes
    remove_column :notes, :type
    remove_column :notes, :interactable_type
    rename_column :notes, :interactable_id, :account_id
  end

  def down
    rename_table  :notes, :interactions
    add_column    :interactions, :type, :string, after: "id"
    add_column    :interactions, :interactable_type, :integer, after: "type"
    rename_column :interactions, :account_id, :interactable_id

    puts "\n\nImportant: set interactions.type to 'Note' and " <<
         "interactions.interactable_type 'Account' for all interactions"
  end
end
