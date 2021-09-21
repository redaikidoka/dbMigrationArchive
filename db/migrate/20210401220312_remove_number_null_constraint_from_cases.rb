class RemoveNumberNullConstraintFromCases < ActiveRecord::Migration[5.2]
  def change
    change_column_null :cases, :number, true
  end
end
