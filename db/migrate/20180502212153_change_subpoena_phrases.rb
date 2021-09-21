class ChangeSubpoenaPhrases < ActiveRecord::Migration[5.1]
  def change
    data = [
      {
        id: 34,
        text: "Any and all non-privileged physical and digital psychiatric records including but not limited to, doctors notes, nurses notes, requests for authorizations (RFAs), and correspondence.",
      },
      {
        id: 55,
        text: "Any and all non-privileged physical and digital medical and billing records including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient  and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), and all medical and radiology reports. ",
      },
      {
        id: 56,
        text: "Any and all non-privileged physical and digital psychiatric medical and billing records including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), prescription records, written correspondence including phone logs and any sign in sheets and all medical and radiology reports.",
      },
      {
        id: 59,
        text: "Any and all non-privileged physical and digital medical records including but not limited to both private and industrial records, doctors notes, treatment and evaluation records, nurses notes, inpatient and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), prescription records, written correspondence including phone logs and any sign in sheets and all medical and radiology reports. Any and all industrial and non-industrial radiology film breakdowns.",
      },
      {
        id: 60,
        text: "Any and all non-privileged physical and digital medical records including but not limited to both private and industrial records, doctors notes, treatment and evaluation records, nurses notes, inpatient and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), prescription records, written correspondence including phone logs and any sign in sheets and all medical and radiology reports. Any and all industrial and non-industrial radiology films on CD/DVD only including but not limited to X-Rays, MRI scans, CT scans and ultrasounds.",
      },
      {
        id: 61,
        text: "Any and all non-privileged physical and digital medical records including but not limited to both private and industrial records, doctors notes, treatment and evaluation records, nurses notes, inpatient and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), prescription records, written correspondence including phone logs and any sign in sheets and all medical and radiology reports. Any and all industrial and non-industrial radiology films in a physical format including, but not limited to X-Rays, MRI scans, CT scans and ultrasounds.",
      },
      {
        id: 62,
        text: "Any and all non-privileged physical and digital medical and billing records including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), prescription records, written correspondence including phone logs and any sign in sheets and all medical and radiology reports. Any and all industrial and non-industrial radiology film breakdowns.",
      },
      {
        id: 63,
        text: "Any and all non-privileged physical and digital medical and billing records including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), prescription records, written correspondence including phone logs and any sign in sheets and all medical and radiology reports. Any and all industrial and non-industrial radiology films on CD/DVD only including but not limited to X-Rays, MRI scans, CT scans and ultrasounds.",
      },
      {
        id: 64,
        text: "Any and all non-privileged physical and digital medical and billing records including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), prescription records, written correspondence including phone logs and any sign in sheets and all medical and radiology reports. Any and all industrial and non-industrial radiology films in a physical format including, but not limited to X-Rays, MRI scans, CT scans and ultrasounds.",
      },
      {
        id: 65,
        text: "Any and all non-privileged physical and digital medical records prior to and including records from the last 5 years, including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient  and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), and all medical and radiology reports.",
      },
      {
        id: 66,
        text: "Any and all non-privileged physical and digital medical records from (date) to present, including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient  and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), and all medical and radiology reports.",
      },
      {
        id: 67,
        text: "Any and all non-privileged physical and digital medical records prior to and including records from the last 5 years, including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient  and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), and all medical and radiology reports.",
      },
    ]

    data.each do |row|
      next unless subpoena_phrase_template = SubpoenaPhraseTemplate.where(id: row[:id]).first
      subpoena_phrase_template.update_attributes(text: row[:text])
    end
  end
end
