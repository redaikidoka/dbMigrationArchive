class AddVendorNameIndex < ActiveRecord::Migration[5.1]
  def change
    add_index :vendors, :name
  end
end
