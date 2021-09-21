class DropContacts < ActiveRecord::Migration
  def up
    drop_table :contacts
  end

  def down
    create_table :contacts do |t|
      t.integer :account_id
      t.integer :person_id
    end
  end
end
