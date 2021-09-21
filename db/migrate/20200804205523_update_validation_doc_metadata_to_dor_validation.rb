class UpdateValidationDocMetadataToDorValidation < ActiveRecord::Migration[5.2]
  def change
    Rake::Task["single_purpose:update_validation_document_metadata"].invoke
  end
end
