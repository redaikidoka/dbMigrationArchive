class SetEventItemIdToInt < ActiveRecord::Migration
  def up
    execute <<-SQL
      ALTER TABLE "events"
      ALTER COLUMN "item_id"
      TYPE integer USING CAST(CASE "item_id" WHEN '' THEN NULL ELSE "item_id" END AS INTEGER)
    SQL
  end

  def down
    change_column :events, :item_id, :string
  end
end
