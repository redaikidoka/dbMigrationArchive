class AddNewSignupToIntakes < ActiveRecord::Migration
  def change
    add_column :intakes, :new_signup, :boolean, null: false, default: false
  end
end
