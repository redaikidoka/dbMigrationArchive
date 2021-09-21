class RenameSsnAndAddEncryptedSsnToDasBuffers < ActiveRecord::Migration
  def change
    rename_column :das_buffers, :ssn, :temp_ssn
    add_column    :das_buffers, :encrypted_ssn, :string, after: "temp_ssn"
  end
end
