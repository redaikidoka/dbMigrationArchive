class RemoveDeclinedAtFromAdditionalSets < ActiveRecord::Migration[5.1]
  def change
    remove_column :additional_sets, :declined_at
  end
end
