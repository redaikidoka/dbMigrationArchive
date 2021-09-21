class CreateDasOrders < ActiveRecord::Migration
  def change
    create_table :das_orders do |t|
      t.string :dob
      t.string :aka
      t.string :firmname
      t.string :folder_eyed
      t.string :ssn
      t.string :applicant
      t.string :binder_eyed
      t.string :doi
      t.string :caseno                  
                                        
      t.timestamps
    end

  end
end
