class RenameRequestingAttorneyName < ActiveRecord::Migration
  def change
    # Move field out of the way for new association of same name.
    rename_column :orders, :requesting_attorney, :requesting_attorney_name
  end
end
