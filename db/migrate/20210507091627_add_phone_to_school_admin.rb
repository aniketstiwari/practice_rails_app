class AddPhoneToSchoolAdmin < ActiveRecord::Migration[6.1]
  def change
  	add_column :school_admins, :phone, :string
  end
end
