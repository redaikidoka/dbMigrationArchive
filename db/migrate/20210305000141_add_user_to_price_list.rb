class AddUserToPriceList < ActiveRecord::Migration[5.2]
  def change
    change_table(:price_lists) do |t|
      t.references :created_by, foreign_key: { to_table: 'users' }
      t.references :updated_by, foreign_key: { to_table: 'users' }
    end
  end
end
