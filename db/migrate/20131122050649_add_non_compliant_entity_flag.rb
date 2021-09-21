class AddNonCompliantEntityFlag < ActiveRecord::Migration
  def up
    add_column :entities, :non_compliant, :boolean, default: false

    Entity.find_each(batch_size: 100) do |e|
      e.non_compliant = false
      e.save
    end
  end

  def down
    remove_column :entities, :non_compliant
  end
end
