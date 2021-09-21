class AddDeliveryFieldsToAccount < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :delivery_paper, :boolean, default: false
    add_column :accounts, :delivery_cd, :boolean, default: false
    add_column :accounts, :delivery_cd_paper_index, :boolean, default: false
    add_column :accounts, :delivery_sif_digital_only, :boolean, default: false
    add_column :accounts, :delivery_max_pages, :integer

    add_column :accounts, :delivery_civil_rba_paper, :boolean, default: false
    add_column :accounts, :delivery_civil_rba_cd, :boolean, default: false
    add_column :accounts, :delivery_civil_rba_cd_paper_index, :boolean, default: false
    add_column :accounts, :delivery_civil_rba_max_pages, :integer

    add_column :accounts, :indexing_type, :string
    add_column :accounts, :indexing_min_pages, :integer
    add_column :accounts, :indexing_max_pages, :integer
    add_column :accounts, :indexing_include_sif, :boolean, default: false
    add_column :accounts, :indexing_include_civil, :boolean, default: false

    add_column :accounts, :non_rec_delivery_paper, :boolean, default: false
  end
end
