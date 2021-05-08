class AddNameAndPhoneToSchoolAdmin < ActiveRecord::Migration[6.1]
  def change
  	add_column :dormitory_admins, :name, :string
  	add_column :dormitory_admins, :phone, :string
  end
end
