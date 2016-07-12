class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.string :namePatient
      t.string :nameMedic
      t.datetime :dateTimeStart
      t.datetime :dateTimeEnd

      t.timestamps
    end
  end
end
