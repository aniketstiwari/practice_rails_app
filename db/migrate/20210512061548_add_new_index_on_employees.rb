class AddNewIndexOnEmployees < ActiveRecord::Migration[6.1]
  def change
  	add_index :employees, :name
  end
end
