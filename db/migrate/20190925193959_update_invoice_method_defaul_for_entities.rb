class UpdateInvoiceMethodDefaulForEntities < ActiveRecord::Migration[5.2]
  def change
    change_column_default :entities, :invoice_method, "Mail"
  end
end
