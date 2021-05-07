class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :product_name
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
