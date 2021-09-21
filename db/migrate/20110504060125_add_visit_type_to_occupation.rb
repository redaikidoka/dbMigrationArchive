class AddVisitTypeToOccupation < ActiveRecord::Migration
  def up
    add_column :occupations, :visit_type, :string, :after => 'title'
    add_column :occupations, :position, :integer, :after => 'visit_type'

    Occupation.reset_column_information

    # Rename this to match the given list below
    if o = Occupation.find_by_title("Partner, Attorney")
      o.update_attributes(title: "Partner Attorney")
    end

    # Positions described by Frank on May 3, 2011 meeting
    positions = [
      [1,  "Managing Attorney", "topdown"],
      [2,  "Partner Attorney",  "topdown"],
      [3,  "Attorney",          "topdown"],
      [4,  "Hearing Rep",       "topdown"],
      [5,  "Office Manager",    "bottomup"],
      [6,  "Paralegal",         "bottomup"],
      [7,  "Legal Assistant",   "bottomup"],
      [8,  "Receptionist",      "bottomup"],
      [9,  "File Clerk",        "bottomup"],
      [10, "Other",             "bottomup"]
    ]

    # Find or create each of these and assign position and visit_type
    positions.each do |p|
      o = Occupation.find_or_initialize_by(title: p[1])
      o.visit_type = p[2]
      o.position = p[0]
      o.save!
    end

    # Get rid of the unused occupations, nullify people objects using them
    if o = Occupation.find_by_title("Administrative Assistant")
      execute "UPDATE people SET occupation_id = NULL WHERE occupation_id = #{o.id}"
      o.delete
    end

    if o = Occupation.find_by_title("Other")
      execute "UPDATE people SET occupation_id = NULL WHERE occupation_id = #{o.id}"
      o.delete
    end
  end

  def down
    remove_column :occupations, :visit_type
    remove_column :occupations, :position
  end
end
