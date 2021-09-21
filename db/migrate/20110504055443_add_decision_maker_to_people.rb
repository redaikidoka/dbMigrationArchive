class AddDecisionMakerToPeople < ActiveRecord::Migration
  def change
    add_column :people, :decision_maker, :boolean, :default => false, :after => 'office_function'
  end
end
