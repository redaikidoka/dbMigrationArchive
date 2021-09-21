class BackfillOrphanedScheduledBillings < ActiveRecord::Migration[5.2]
  def change
    Rake::Task["single_purpose:backfill_orphaned_scheduled_billings"].invoke
  end
end
