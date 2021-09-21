class AddClaimsAdministratorToEntities < ActiveRecord::Migration
  def change
    add_reference :entities, :daisy_claims_administrator, index: true, foreign_key: true
  end
end
