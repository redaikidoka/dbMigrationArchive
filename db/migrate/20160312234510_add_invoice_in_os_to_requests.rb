class AddInvoiceInOsToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :invoice_in_os, :boolean, default: true, null: false

    # Set preexisting requests as having been invoiced in DAS
    Request.where(state: %w(completed cancelled))
      .update_all(invoice_in_os: false)

    # Set unsupported order types to be continue being invoiced in DAS
    ids = Request.includes(:order)
      .where.not(orders: { order_type: Order::ORDER_TYPES.keys })
      .pluck("requests.id")
    Request.where(id: ids).update_all(invoice_in_os: false)
  end
end
