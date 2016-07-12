class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :namePatient
      t.string :photoPatient
      t.datetime :lastAppointment
      t.integer :agePatient
      t.text :detailsPatient
      t.text :info
      t.integer :appointmentsTotal

      t.timestamps
    end
  end
end
