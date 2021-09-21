class ChangeJetDefendantsAttorneysToJetAttorneys < ActiveRecord::Migration[5.2]
  def change
    rename_table :jet_defendants_attorneys,  :jet_attorneys
    add_column :jet_attorneys, :attorney_type, :string
    rename_column :jet_attorneys, :defense_attorney_signature, :attorney_signature
  end
end
