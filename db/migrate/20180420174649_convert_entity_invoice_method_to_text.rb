class ConvertEntityInvoiceMethodToText < ActiveRecord::Migration[5.1]
  def change
    rename_column :entities, :invoice_method, :invoice_method_old
    add_column :entities, :invoice_method, :text, default: "Lob"

    Entity.where(invoice_method_old: 1).update_all(invoice_method: "DaisyBill")

    remove_column :entities, :invoice_method_old
  end
end
