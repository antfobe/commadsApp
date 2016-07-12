class CreatePatientLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :patient_logs do |t|
      t.string :namePatient
      t.datetime :dateAppointment
      t.string :nameMedic
      t.string :status
      t.text :info

      t.timestamps
    end
  end
end
