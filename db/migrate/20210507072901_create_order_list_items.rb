class CreateOrderListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_list_items do |t|
      t.string :name
      t.references :product_variant, null: false, foreign_key: true
      t.timestamps
    end
  end
end
