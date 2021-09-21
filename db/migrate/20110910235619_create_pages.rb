class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :section
      t.integer :position
      t.string :name
      t.text :body
      t.boolean :visible, :default => false
      t.string :employee_title
      t.string :employee_email
      t.string :employee_image
      t.string :page_title
      t.string :meta_description
      t.string :meta_keywords

      t.timestamps
    end
  end
end
