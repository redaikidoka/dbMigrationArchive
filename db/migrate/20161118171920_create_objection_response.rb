class CreateObjectionResponse < ActiveRecord::Migration[5.0]
  def change
    create_table :objection_responses do |t|
      t.string :title
      t.text :description
      t.datetime :archived_at

      t.timestamps null: false
    end
  end
end
