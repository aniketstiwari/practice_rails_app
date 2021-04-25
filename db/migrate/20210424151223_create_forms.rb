class CreateForms < ActiveRecord::Migration[6.1]
  def change
    create_table :forms do |t|
      t.integer :employee_id
      t.string :form_name

      t.timestamps
    end
    add_index :forms, :employee_id
  end
end
