class AddConvertStatesToOcrs < ActiveRecord::Migration[5.2]
  def change
    add_column :ocrs, :converting_at, :datetime
    add_column :ocrs, :converted_at, :datetime
  end
end
