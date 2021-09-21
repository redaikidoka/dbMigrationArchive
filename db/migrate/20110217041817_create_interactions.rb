class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.string :type
      t.string :user_id
      t.date :date
      t.text :description

      t.timestamps
    end

  end
end
