class AddCodeAndDescrToItemsAndLineItems < ActiveRecord::Migration
  def change
    add_column :items, :code, :text
    add_column :items, :description, :text
    add_column :items, :taxable, :boolean, default: false
    add_column :line_items, :code, :text
    add_column :line_items, :description, :text
    add_column :line_items, :taxable, :boolean, default: false

    remove_column :items, :name
    remove_column :line_items, :name
  end
end
