class CreateEventCategories < ActiveRecord::Migration
  def up
    create_table :event_categories do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :event_categories
  end
end
