class ConvertVendorsToBigint < ActiveRecord::Migration[5.1]
  def up
    change_column :vendors, :id, :bigint
  end
end
