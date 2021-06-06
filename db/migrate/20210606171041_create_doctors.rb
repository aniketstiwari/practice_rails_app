class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :doctor_name
      t.string :specialization
      t.integer :phone_no

      t.timestamps
    end
  end
end
