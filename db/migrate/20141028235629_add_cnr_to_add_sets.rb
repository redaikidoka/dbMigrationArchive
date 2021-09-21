class AddCnrToAddSets < ActiveRecord::Migration
  def change
    add_column :additional_sets, :cnr, :boolean, default: false
  end
end
