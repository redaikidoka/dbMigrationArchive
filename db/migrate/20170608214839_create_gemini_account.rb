class CreateGeminiAccount < ActiveRecord::Migration[5.1]
  def change
    create_table :gemini_accounts do |t|
      t.string :name
    end
  end
end
