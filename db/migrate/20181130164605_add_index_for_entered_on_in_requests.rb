class AddIndexForEnteredOnInRequests < ActiveRecord::Migration[5.2]
  def change
    add_index :requests, :entered_on
  end
end
