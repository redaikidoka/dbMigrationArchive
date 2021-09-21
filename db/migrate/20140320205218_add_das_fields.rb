class AddDasFields < ActiveRecord::Migration
  def up
    add_column :orders, :county, :string
    add_column :orders, :subpoena_issued_by, :string
    add_column :requests, :field_note, :text
    add_column :requests, :production_note, :text
  end

  def down
    remove_column :requests, :production_note
    remove_column :requests, :field_note
    remove_column :orders, :subpoena_issued_by
    remove_column :orders, :county
  end
end
