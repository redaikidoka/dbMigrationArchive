class AddTaxFieldsToSalesTaxCaches < ActiveRecord::Migration
  def change
    add_column :sales_tax_caches, :county, :text
    add_column :sales_tax_caches, :city, :text
    add_column :sales_tax_caches, :state, :text

    add_column :sales_tax_caches, :state_rate, :decimal, precision: 8, scale: 6
    add_column :sales_tax_caches, :county_rate, :decimal, precision: 8, scale: 6
    add_column :sales_tax_caches, :city_rate, :decimal, precision: 8, scale: 6

    rename_column :sales_tax_caches, :rate, :combined_rate
  end
end
