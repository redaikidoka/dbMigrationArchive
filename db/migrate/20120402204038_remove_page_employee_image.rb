class RemovePageEmployeeImage < ActiveRecord::Migration
  def up
    remove_column :pages, :employee_image
  end

  def down
    add_column :pages, :employee_image, :string, after: "employee_email"
  end
end
