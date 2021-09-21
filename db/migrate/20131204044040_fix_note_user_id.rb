class FixNoteUserId < ActiveRecord::Migration

  def up
    execute "ALTER TABLE notes ALTER COLUMN user_id TYPE integer USING (trim(user_id)::integer);"
  end

  def down
    change_column :notes, :user_id, :string
  end
end
