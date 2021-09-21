class CreateEmailValidationCacheTable < ActiveRecord::Migration[5.2]
  def change
    create_table :email_validation_caches do |t|
      t.string :email
      t.timestamp :looked_up_at
    end
  end
end
