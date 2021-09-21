class RemoveAccessesAndGeminiaccounts < ActiveRecord::Migration[5.2]
  def change
    drop_table :gemini_accounts
    drop_table :accesses
  end
end
