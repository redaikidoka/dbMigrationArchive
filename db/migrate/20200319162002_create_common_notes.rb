class CreateCommonNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :common_notes do |t|
      t.references :parent, null: false, polymorphic: true, index: true
      t.references :user, index: true, null: false
      t.text :note
      t.timestamps
    end
  end
end
