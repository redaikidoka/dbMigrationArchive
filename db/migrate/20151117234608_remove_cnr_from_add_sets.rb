class RemoveCnrFromAddSets < ActiveRecord::Migration
  def up
    remove_column :additional_sets, :cnr
  end

  def down
    add_column :additional_sets, :cnr, :boolean, default: false
  end
end
