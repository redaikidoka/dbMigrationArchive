class AddFieldsToDasBuffers < ActiveRecord::Migration
  def up
    change_column :das_buffers, :workordernumber, :integer
    add_column    :das_buffers, :datereceived, :string
    add_column    :das_buffers, :dateentered, :string
    add_column    :das_buffers, :dateready, :string
    add_column    :das_buffers, :dateserved, :string
    add_column    :das_buffers, :datecopiedpickedup, :string
    add_column    :das_buffers, :datedelivered, :string
    add_column    :das_buffers, :personserved, :string
    add_column    :das_buffers, :aka, :string
    add_column    :das_buffers, :dob, :string
    add_column    :das_buffers, :locationphone, :string
    add_column    :das_buffers, :locationaddress, :string
    add_column    :das_buffers, :locationcitystatezip, :string
    add_column    :das_buffers, :locationdepartment, :string
    add_column    :das_buffers, :locationofrecords, :string
    add_column    :das_buffers, :ssn, :string
    add_column    :das_buffers, :applicant, :string
    add_column    :das_buffers, :activestatus, :string
    add_column    :das_buffers, :reflister, :string
  end
  
  def down
    change_column :das_buffers, :workordernumber
    remove_column :das_buffers, :datereceived
    remove_column :das_buffers, :dateentered
    remove_column :das_buffers, :dateready
    remove_column :das_buffers, :dateserved
    remove_column :das_buffers, :datecopiedpickedup
    remove_column :das_buffers, :datedelivered
    remove_column :das_buffers, :personserved
    remove_column :das_buffers, :aka
    remove_column :das_buffers, :dob
    remove_column :das_buffers, :locationphone
    remove_column :das_buffers, :locationaddress
    remove_column :das_buffers, :locationcitystatezip
    remove_column :das_buffers, :locationdepartment
    remove_column :das_buffers, :locationofrecords
    remove_column :das_buffers, :ssn
    remove_column :das_buffers, :applicant
    remove_column :das_buffers, :activestatus
    remove_column :das_buffers, :reflister
  end
end
