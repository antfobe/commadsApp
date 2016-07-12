json.array!(@patients) do |patient|
  json.extract! patient, :id, :namePatient, :photoPatient, :lastAppointment, :agePatient, :detailsPatient, :info, :appointmentsTotal
  json.url patient_url(patient, format: :json)
end
