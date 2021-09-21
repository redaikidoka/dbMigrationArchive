class CreateCommunicationTemplates < ActiveRecord::Migration
  def change
    create_table :communication_templates do |t|
      t.string :title
      t.text :description
      t.datetime :archived_at

      t.timestamps null: false
    end
  end
end
