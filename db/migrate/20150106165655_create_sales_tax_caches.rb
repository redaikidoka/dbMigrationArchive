class CreateSalesTaxCaches < ActiveRecord::Migration
  def change
    create_table :sales_tax_caches do |t|
      t.string :zip
      t.decimal :rate, precision: 8, scale: 6
      t.datetime :looked_up_at
      t.timestamps
    end
    add_index :sales_tax_caches, :zip
  end
end
