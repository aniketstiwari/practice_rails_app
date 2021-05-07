class CreateDormitoryAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :dormitory_admins do |t|
      t.references :dormitory, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
