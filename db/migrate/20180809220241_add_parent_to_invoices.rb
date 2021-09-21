class AddParentToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_reference :invoices, :parent, polymorphic: true, index: true

    say_with_time "Assigning WorkOrder to Parent on Invoices" do
      Invoice.where("work_order_id IS NOT NULL").in_batches(of: 10000).each_with_index do |relation, batch_index|
        say_with_time "Processing batch #{batch_index}" do
          relation.update_all("parent_type = 'WorkOrder', parent_id = work_order_id")
        end
      end
    end
  end
end
