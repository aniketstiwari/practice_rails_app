class CreateBills < ActiveRecord::Migration[6.1]
  def change
    create_table :bills do |t|
      t.integer :patent_id
      t.integer :total_price
      t.integer :medicine_fee

      t.timestamps
    end
    add_index :bills, :patent_id
  end
end
