class CreateExpenseCategories < ActiveRecord::Migration
  def change
    create_table :expense_categories do |t|
      t.integer :code
      t.string :name

      t.timestamps
    end
  end
end
