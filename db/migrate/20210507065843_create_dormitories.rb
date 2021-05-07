class CreateDormitories < ActiveRecord::Migration[6.1]
  def change
    create_table :dormitories do |t|
      t.integer :school_id
      t.timestamps
    end
    add_index :dormitories, :school_id
  end
end
