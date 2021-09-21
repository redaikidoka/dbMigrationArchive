class AddPartyClaimNumberAlternative < ActiveRecord::Migration
  def up
    add_column :parties, :claim_number_alternative, :string, after: "claim_number"
  end

  def down
    remove_column :parties, :claim_number_alternative
  end
end
