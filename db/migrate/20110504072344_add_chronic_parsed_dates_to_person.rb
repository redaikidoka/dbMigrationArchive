class AddChronicParsedDatesToPerson < ActiveRecord::Migration
  def change
    add_column :people, :born_on_desc,  :string, :after => 'born_on'
    add_column :people, :hired_on_desc, :string, :after => 'hired_on'
  end
end
