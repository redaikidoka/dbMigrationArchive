class CreateObjectionTypes < ActiveRecord::Migration
  def change
    create_table :objection_types do |t|
      t.text :name
      t.text :code
    end
  end
end
