class AddInteractablePolymorphicFieldsToInteration < ActiveRecord::Migration
  def up
    add_column :interactions, :interactable_type, :string
    add_column :interactions, :interactable_id, :integer
  end

  def down
    remove_column :interactions, :interactable_type
    remove_column :interactions, :interactable_id
  end
end
