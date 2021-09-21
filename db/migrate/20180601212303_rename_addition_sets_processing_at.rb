class RenameAdditionSetsProcessingAt < ActiveRecord::Migration[5.1]
  def change
    rename_column :additional_sets, :processing_at, :shipping_at
  end
end
