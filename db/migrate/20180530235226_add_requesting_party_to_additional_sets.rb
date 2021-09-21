class AddRequestingPartyToAdditionalSets < ActiveRecord::Migration[5.1]
  def change
    add_column :additional_sets, :requesting_party, :text
  end
end
