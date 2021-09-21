class UpdateSubpoenaPhrasing < ActiveRecord::Migration[5.2]
  def change
    data = [
      {
        id: 32,
        text: "Any and all non-privileged physical and electronic medical records including but not limited to both private and industrial records, doctors notes, treatment and evaluation records, nurses notes, inpatient  and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), and all medical and radiology reports.",
      },
      {
        id: 33,
        text: "Any and all non-privileged physical and electronic billing records.",
      },
      {
        id: 34,
        text: "Any and all non-privileged physical and electronic psychiatric records including but not limited to, doctors notes, nurses notes, requests for authorizations (RFAs), and correspondence.",
      },
      {
        id: 35,
        text: "Any and all non-privileged physical and electronic wage records, including but not limited to earning statements, W-2’s from beginning date of employment to present. All notices regarding the initiation of the employer's Medical Provider Network (MPN) both prior and subsequent to the date(s) of injury. All notices regarding the employer's Medical Network Provider, including all letters and notices to any party(ies), with all attachments, pamphlets, brochures and handouts. All documents signed by the applicant, the insurance representative or the employer verifying receipt of any of the above documentation.",
      },
      {
        id: 36,
        text: "Any and all non-privileged physical and electronic personnel, including but not limited to application, reviews, warnings, write-ups, injury reports, medical records, doctors notes, workers compensation file, work schedule from beginning date of employment to present. All notices regarding the initiation of the employer's Medical Provider Network (MPN) both prior and subsequent to the date(s) of injury. All notices regarding the employer's Medical Network Provider, including all letters and notices to any party(ies), with all attachments, pamphlets, brochures and handouts. The designation of a personal physician form, all evidence of every job-site posting of the employer related to workers' compensation claims and the employer's Medical Provider Network.  All documents signed by the applicant, the insurance representative or the employer verifying receipt of any of the above documentation.",
      },
      {
        id: 37,
        text: "Any and all physical and electronic non privileged records pertaining to the claim file, including but not limited to hand written notes, correspondence, electronic media, sub-rosa forms, investigative reports, medical records and paid benefits to include VRMA, TD, PTD and PD payments. All notices regarding the initiation of the employer's Medical Provider Network (MPN) both prior and subsequent to the date(s) of injury. All notices regarding the employer's Medical Network Provider, including all letters and notices to any party(ies), with all attachments, pamphlets, brochures and handouts. The designation of a personal physician form, all evidence of every job-site posting of the employer related to workers' compensation claims and the employer's Medical Provider Network.  All documents signed by the applicant, the insurance representative or the employer verifying receipt of any of the above documentation.",
      },
      {
        id: 55,
        text: "Any and all non-privileged physical and electronic medical and billing records including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient  and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), and all medical and radiology reports.",
      },
      {
        id: 56,
        text: "Any and all non-privileged physical and electronic psychiatric medical and billing records including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), prescription records, written correspondence including phone logs and any sign in sheets and all medical and radiology reports.",
      },
      {
        id: 57,
        text: "Any and all non-privileged physical and electronic personnel and wage records, including but not limited to application, reviews, warnings, write-ups, injury reports, medical records, doctors notes, earning statements, W-2’s, workers compensation file, work schedule from beginning date of employment to present. All notices regarding the initiation of the employer's Medical Provider Network (MPN) both prior and subsequent to the date(s) of injury. All notices regarding the employer's Medical Network Provider, including all letters and notices to any party(ies), with all attachments, pamphlets, brochures and handouts. The employer's first report of injury form, the designation of a personal physician form, all evidence of every job-site posting of the employer related to workers' compensation claims and the employer's Medical Provider Network.  All documents signed by the applicant, the insurance representative or the employer verifying receipt of any of the above documentation.",
      },
      {
        id: 58,
        text: "Any and all non-privileged physical and electronic personnel and wage records, including but not limited to application, reviews, warnings, write-ups, injury reports, medical records, doctors notes, earning statements, W-2’s, workers compensation file, work schedule from beginning date of employment to present. All notices regarding the initiation of the employer's Medical Provider Network (MPN) both prior and subsequent to the date(s) of injury. All notices regarding the employer's Medical Network Provider, including all letters and notices to any party(ies), with all attachments, pamphlets, brochures and handouts. The employer's first report of injury form, the designation of a personal physician form, all evidence of every job-site posting of the employer related to workers' compensation claims and the employer's Medical Provider Network.  All documents signed by the applicant, the insurance representative or the employer verifying receipt of any of the above documentation. Any and all physical and electronic non privileged records pertaining to the claim file, including but not limited to hand written notes, correspondence, electronic media, sub-rosa forms, investigative reports, medical records and paid benefits to include TD, PTD and PD payments. All notices regarding the initiation of the employer's Medical Provider Network (MPN) both prior and subsequent to the date(s) of injury. All notices regarding the employer's Medical Network Provider, including all letters and notices to any party(ies), with all attachments, pamphlets, brochures and handouts. The employer's first report of injury form, the designation of a personal physician form, all evidence of every job-site posting of the employer related to workers' compensation claims and the employer's Medical Provider Network.  All documents signed by the applicant, the insurance representative or the employer verifying receipt of any of the above documentation.",
      },
      {
        id: 59,
        text: "Any and all non-privileged physical and electronic medical records including but not limited to both private and industrial records, doctors notes, treatment and evaluation records, nurses notes, inpatient and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), prescription records, written correspondence including phone logs and any sign in sheets and all medical and radiology reports. Any and all industrial and non-industrial radiology film breakdowns.",
      },
      {
        id: 60,
        text: "Any and all non-privileged physical and electronic medical records including but not limited to both private and industrial records, doctors notes, treatment and evaluation records, nurses notes, inpatient and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), prescription records, written correspondence including phone logs and any sign in sheets and all medical and radiology reports. Any and all industrial and non-industrial radiology films on CD/DVD only including but not limited to X-Rays, MRI scans, CT scans and ultrasounds.",
      },
      {
        id: 61,
        text: "Any and all non-privileged physical and electronic medical records including but not limited to both private and industrial records, doctors notes, treatment and evaluation records, nurses notes, inpatient and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), prescription records, written correspondence including phone logs and any sign in sheets and all medical and radiology reports. Any and all industrial and non-industrial radiology films in a physical format including, but not limited to X-Rays, MRI scans, CT scans and ultrasounds.",
      },
      {
        id: 62,
        text: "Any and all non-privileged physical and electronic medical and billing records including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), prescription records, written correspondence including phone logs and any sign in sheets and all medical and radiology reports. Any and all industrial and non-industrial radiology film breakdowns.",
      },
      {
        id: 63,
        text: "Any and all non-privileged physical and electronic medical and billing records including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), prescription records, written correspondence including phone logs and any sign in sheets and all medical and radiology reports. Any and all industrial and non-industrial radiology films on CD/DVD only including but not limited to X-Rays, MRI scans, CT scans and ultrasounds.",
      },
      {
        id: 64,
        text: "Any and all non-privileged physical and electronic medical and billing records including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), prescription records, written correspondence including phone logs and any sign in sheets and all medical and radiology reports. Any and all industrial and non-industrial radiology films in a physical format including, but not limited to X-Rays, MRI scans, CT scans and ultrasounds.",
      },
      {
        id: 65,
        text: "Any and all non-privileged physical and electronic medical records prior to and including records from the last 5 years, including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient  and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), and all medical and radiology reports.",
      },
      {
        id: 66,
        text: "Any and all non-privileged physical and electronic medical records from (date) to present, including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient  and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), and all medical and radiology reports.",
      },
      {
        id: 67,
        text: "Any and all non-privileged physical and electronic medical records prior to and including records from the last 5 years, including but not limited to both private and industrial records, doctors notes, nurses notes, inpatient  and outpatient records, correspondence, lab results, diagnostic test results, requests for authorizations (RFAs), and all medical and radiology reports.",
      },
    ]

    data.each do |row|
      next unless subpoena_phrase_template = SubpoenaPhraseTemplate.where(id: row[:id]).first
      subpoena_phrase_template.update_attributes(text: row[:text])
    end
  end
end
