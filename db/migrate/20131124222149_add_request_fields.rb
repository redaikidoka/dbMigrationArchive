class AddRequestFields < ActiveRecord::Migration
  def up
    add_column :requests, :followup_on, :date
    add_column :requests, :ready_on, :date
    add_column :requests, :copied_on, :date
    add_column :requests, :serve_acknowledged_on, :date
    add_column :requests, :personserved, :string
    add_column :requests, :dateserved, :date
  end

  def down
    remove_column :requests, :followup_on
    remove_column :requests, :ready_on
    remove_column :requests, :copied_on
    remove_column :requests, :serve_acknowledged_on
    remove_column :requests, :personserved
    remove_column :requests, :dateserved
  end
end
