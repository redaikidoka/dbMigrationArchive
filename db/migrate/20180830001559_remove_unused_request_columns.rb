class RemoveUnusedRequestColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :requests, :dateserved
    remove_column :requests, :personserved
  end
end
