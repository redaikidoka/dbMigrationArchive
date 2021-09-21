class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :position
      t.string :state
      t.string :field_type
      t.text :description
      t.text :options

      t.timestamps
    end

  end
end
