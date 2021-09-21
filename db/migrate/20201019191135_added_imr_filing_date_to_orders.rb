class AddedImrFilingDateToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :imr_filing_date, :date
  end
end
