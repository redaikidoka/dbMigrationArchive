class AddDeliveryFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :delivery_paper, :boolean, default: false
    add_column :users, :delivery_cd, :boolean, default: false
    add_column :users, :delivery_cd_paper_index, :boolean, default: false
    add_column :users, :delivery_sif_digital_only, :boolean, default: false
    add_column :users, :delivery_max_pages, :integer

    add_column :users, :delivery_civil_rba_paper, :boolean, default: false
    add_column :users, :delivery_civil_rba_cd, :boolean, default: false
    add_column :users, :delivery_civil_rba_cd_paper_index, :boolean, default: false
    add_column :users, :delivery_civil_rba_max_pages, :integer

    add_column :users, :indexing_type, :string
    add_column :users, :indexing_min_pages, :integer
    add_column :users, :indexing_max_pages, :integer
    add_column :users, :indexing_include_sif, :boolean, default: false
    add_column :users, :indexing_include_civil, :boolean, default: false

    add_column :users, :non_rec_delivery_paper, :boolean, default: false

    remove_column :accounts, :delivery_paper
    remove_column :accounts, :delivery_cd
    remove_column :accounts, :delivery_cd_paper_index
    remove_column :accounts, :delivery_sif_digital_only
    remove_column :accounts, :delivery_max_pages
    remove_column :accounts, :delivery_civil_rba_paper
    remove_column :accounts, :delivery_civil_rba_cd
    remove_column :accounts, :delivery_civil_rba_cd_paper_index
    remove_column :accounts, :delivery_civil_rba_max_pages
    remove_column :accounts, :indexing_type
    remove_column :accounts, :indexing_min_pages
    remove_column :accounts, :indexing_max_pages
    remove_column :accounts, :indexing_include_sif
    remove_column :accounts, :indexing_include_civil
    remove_column :accounts, :non_rec_delivery_paper
  end
end
