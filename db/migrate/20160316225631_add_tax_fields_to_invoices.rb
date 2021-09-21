class AddTaxFieldsToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :tax_county, :text
    add_column :invoices, :tax_city, :text
    add_column :invoices, :tax_state, :text

    add_column :invoices, :tax_state_rate, :decimal, precision: 8, scale: 6
    add_column :invoices, :tax_county_rate, :decimal, precision: 8, scale: 6
    add_column :invoices, :tax_city_rate, :decimal, precision: 8, scale: 6
  end
end
