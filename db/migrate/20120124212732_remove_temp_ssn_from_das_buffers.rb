class RemoveTempSsnFromDasBuffers < ActiveRecord::Migration
  def up
    remove_column :das_buffers, :temp_ssn
  end

  def down
    add_column :das_buffers, :temp_ssn, :string, after: "locationofrecords"
  end
end
