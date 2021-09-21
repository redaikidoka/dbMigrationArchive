class AddFailureMessagesToOcrs < ActiveRecord::Migration[5.2]
  def change
    add_column :ocrs, :failure_messages, :text, array: true, default: []
  end
end
