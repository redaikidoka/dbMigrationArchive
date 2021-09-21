class UpdateEntityInvoiceMethods < ActiveRecord::Migration[5.2]
  def change
    Entity.where(invoice_method: "Lob").in_batches.update_all(invoice_method: "Mail")
  end
end
