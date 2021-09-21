class AddVendorRelationToExpense < ActiveRecord::Migration
  def self.up
    add_column :expenses, :vendor_id, :integer
    add_index :expenses, :vendor_id

    Expense.reset_column_information
    Expense.all.each do |expense|
      expense.update_attributes(vendor_id: Vendor.find_or_create_by(name: expense.vendor))
    end

    remove_column :expenses, :vendor
  end

  def self.down
    add_column :expenses, :vendor, :string

    Expense.reset_column_information
    Vendor.all.each do |vendor|
      Expense.update_all({:vendor => vendor.name}, {:vendor_id => vendor.id})
    end

    remove_column :expenses, :vendor_id
  end
end
