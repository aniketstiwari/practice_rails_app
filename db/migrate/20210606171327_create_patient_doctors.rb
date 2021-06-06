class CreatePatientDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :patient_doctors do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
