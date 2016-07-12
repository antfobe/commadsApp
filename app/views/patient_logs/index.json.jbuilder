json.array!(@patient_logs) do |patient_log|
  json.extract! patient_log, :id, :namePatient, :dateAppointment, :nameMedic, :status, :info
  json.url patient_log_url(patient_log, format: :json)
end
