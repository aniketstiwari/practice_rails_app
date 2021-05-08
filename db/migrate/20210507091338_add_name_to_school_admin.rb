class AddNameToSchoolAdmin < ActiveRecord::Migration[6.1]
  def change
  	add_column :school_admins, :name, :string
  end
end
