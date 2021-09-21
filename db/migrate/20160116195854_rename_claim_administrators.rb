class RenameClaimAdministrators < ActiveRecord::Migration
  def change
    rename_table :claims_administrators, :daisy_claims_administrators
    change_column :daisy_claims_administrators, :cached_attrs, "jsonb USING CAST(cached_attrs AS jsonb)"
  end
end
