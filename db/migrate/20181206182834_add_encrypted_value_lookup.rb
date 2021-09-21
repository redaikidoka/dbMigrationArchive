class AddEncryptedValueLookup < ActiveRecord::Migration[5.2]
  def change
    add_column :encrypted_values, :foreign_lookup_type, :string
    add_column :encrypted_values, :foreign_lookup_id, :bigint
    add_column :encrypted_values, :foreign_lookup_uuid, :uuid
    add_index :encrypted_values, :foreign_lookup_type
    add_index :encrypted_values, :foreign_lookup_id
    add_index :encrypted_values, :foreign_lookup_uuid
  end
end
