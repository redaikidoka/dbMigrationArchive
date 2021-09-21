class AddAnswerOptions < ActiveRecord::Migration
  def up
    add_column :answers, :options, :text, :after => "description"
  end

  def down
    remove_column :answers, :options
  end
end
