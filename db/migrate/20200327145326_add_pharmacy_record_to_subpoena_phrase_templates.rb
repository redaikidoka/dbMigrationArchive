class AddPharmacyRecordToSubpoenaPhraseTemplates < ActiveRecord::Migration[5.2]
  def change
    Rake::Task["single_purpose:backfill_subpoena_for_pharmacy"].invoke
  end
end
