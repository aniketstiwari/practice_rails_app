class AddIndexOnEmployees < ActiveRecord::Migration[6.1]
  def change
  	add_index :employees, :salary
  end
end
