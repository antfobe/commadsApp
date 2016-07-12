json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :namePatient, :nameMedic, :dateTimeStart, :dateTimeEnd
  json.url appointment_url(appointment, format: :json)
end
