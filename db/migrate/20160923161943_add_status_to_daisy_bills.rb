class AddStatusToDaisyBills < ActiveRecord::Migration
  def change
    add_column :daisy_bills, :status, :text
    Daisy::Bill.update_all("status = cached_attrs ->> 'status'")
  end
end
