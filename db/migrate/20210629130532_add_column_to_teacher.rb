class AddColumnToTeacher < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :first_name, :string
    add_column :teachers, :last_name, :string
    add_column :teachers, :age, :integer
  end
end
