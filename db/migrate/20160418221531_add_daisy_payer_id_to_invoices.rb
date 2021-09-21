class AddDaisyPayerIdToInvoices < ActiveRecord::Migration
  def change
    add_reference :invoices, :daisy_payer, index: true, foreign_key: true
  end
end
