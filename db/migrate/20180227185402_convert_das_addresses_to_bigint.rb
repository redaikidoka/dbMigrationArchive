class ConvertDasAddressesToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :das_addresses, :id, :bigint
  end
end
