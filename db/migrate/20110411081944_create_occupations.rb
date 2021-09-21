class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|
      t.string :title

      t.timestamps
    end

    add_column :people, :occupation_id, :integer
  end
end
