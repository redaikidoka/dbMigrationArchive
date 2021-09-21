class CreateCompetitors < ActiveRecord::Migration
  def up
    create_table :competitors do |t|
      t.string :name
      t.timestamps
    end
    
    add_index :competitors, :name

    Competitor.reset_column_information
    
    ['MedLegal','Republic','Matrix','ARS','Lopez','Compex','United'].each do |c|
      Competitor.create(:name => c)
    end
    
    add_column :interactions, :competitor_id, :integer, :after => 'interactable_id'
  end
  
  def down
    drop_table :competitors
    remove_column :interactions, :competitor_id
  end
end
