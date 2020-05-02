class CreateProductBills < ActiveRecord::Migration[6.0]
  def change
    create_table :product_bills do |t|
      t.integer :product_id
      t.integer :bill_id
      t.integer :quantity

      t.timestamps
    end
  end
end
