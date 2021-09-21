class AddTaxableCentsToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :taxable_cents, :integer
    add_column :invoices, :nontaxable_cents, :integer

    Invoice.find_each do |i|
      i.taxable_cents = i.line_items.taxable.sum(:total_cents)
      i.nontaxable_cents = i.line_items.not_taxable.sum(:total_cents)
      i.save
    end
  end


end
