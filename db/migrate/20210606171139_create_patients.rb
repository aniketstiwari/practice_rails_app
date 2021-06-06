class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :patient_name
      t.string :patient_problem
      t.string :patient_address
      t.timestamps
    end
  end
end
