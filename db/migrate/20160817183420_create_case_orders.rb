class CreateCaseOrders < ActiveRecord::Migration
  def change
    create_table :case_orders do |t|
      t.belongs_to :case, index: true
      t.belongs_to :order, index: true
      t.timestamps null: false
    end
  end
end
