class AddEnteredOnToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :entered_on, :date
  end
end
