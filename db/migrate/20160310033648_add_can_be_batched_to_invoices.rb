class AddCanBeBatchedToInvoices < ActiveRecord::Migration
  def up
    add_column :invoices, :can_be_batched, :boolean, default: true, null: false,
      index: true

    Invoice.reset_column_information

    Invoice.where.not(invoice_batch_id: nil).each do |invoice|
      invoice.update_column(:can_be_batched, false)
    end
  end

  def down
    remove_column :invoices, :can_be_batched
  end
end
