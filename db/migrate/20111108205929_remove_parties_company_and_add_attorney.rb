class RemovePartiesCompanyAndAddAttorney < ActiveRecord::Migration
  def up
    remove_column :parties, :company
    add_column :parties, :attorney, :string, :after => "instructions"
  end

  def down
    remove_column :parties, :attorney
    add_column :parties, :company, :string, :after => "name"
  end
end
