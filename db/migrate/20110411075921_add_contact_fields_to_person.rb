class AddContactFieldsToPerson < ActiveRecord::Migration
  def change
    add_column :people, :fax, :string
    add_column :people, :url, :string
    add_column :people, :type_of_law, :string
    add_column :people, :office_function, :string
    add_column :people, :born_on, :date
    add_column :people, :hired_on, :date
    add_column :people, :notes, :text
  end
end
