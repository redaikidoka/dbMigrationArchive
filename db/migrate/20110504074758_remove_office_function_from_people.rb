class RemoveOfficeFunctionFromPeople < ActiveRecord::Migration
  def up
    remove_column :people, :office_function
  end

  def down
    add_column :people, :office_function, :string
  end
end
