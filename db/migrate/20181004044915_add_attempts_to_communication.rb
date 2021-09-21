class AddAttemptsToCommunication < ActiveRecord::Migration[5.2]
  def change
    add_column :communications, :generation_attempts, :integer, default: 0
  end
end
