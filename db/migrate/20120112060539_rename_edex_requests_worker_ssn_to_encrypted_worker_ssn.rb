class RenameEdexRequestsWorkerSsnToEncryptedWorkerSsn < ActiveRecord::Migration
  def change
    rename_column :edex_requests, :worker_ssn, :encrypted_worker_ssn
  end
end
