class AddPriceToForms < ActiveRecord::Migration[6.1]
  def change
  	add_column :forms, :price, :integer
  end
end
