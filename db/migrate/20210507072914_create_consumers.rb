class CreateConsumers < ActiveRecord::Migration[6.1]
  def change
    create_table :consumers do |t|
      t.string :name
      t.references :order_list_item, null: false, foreign_key: true
      t.timestamps
    end
  end
end
