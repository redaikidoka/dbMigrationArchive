class CreateDasCalls < ActiveRecord::Migration
  def change
    create_table :das_calls do |t|
      t.string :namedateloc
      t.string :show_online
      t.string :call_number
      t.string :field_area
      t.string :date_sent
      t.string :usernow
      t.string :callertofind
      t.string :allllocation
      t.string :other_called
      t.string :excusenumber
      t.string :call_made_time
      t.string :always_1
      t.string :statusemail
      t.string :totalcalldata
      t.string :cs_shown
      t.string :called_witness_today
      t.string :called_by_fax
      t.string :called_by_company
      t.string :call_made
      t.string :callstatustofind
      t.string :nameanddate
      t.string :calordererer
      t.string :numberby
      t.string :caller_name
      t.string :called_by_no_shown
      t.string :called_by
      t.string :callalowed
      t.string :contactmethod
      t.string :other_for_this_guy
      t.string :order_called_on
      t.string :invoice_number_for_call
      t.string :employee_name
      t.text :callnotes
      t.string :called_other_today
      t.string :clientname
      t.string :calltotofind
      t.string :datetofind
      t.string :called_client_today
      t.string :filepath
      t.string :invtofind
      t.string :onlineshow
      t.string :called_by_ext
      t.string :invoice_number
      t.string :calledbynoshown
      t.time :call_time
      t.string :dailystatusemaildate
      t.string :tofind
      t.string :callorderer
      t.string :caller_name_listed
      t.string :call_made_by_this_guy
      t.string :called_by_no
      t.string :call_to
      t.string :call_status
      t.date :call_date
      t.string :caller_name_finder
      
      t.timestamps
    end

  end
end
