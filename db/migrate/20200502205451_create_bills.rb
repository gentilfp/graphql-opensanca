class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.string :status
      t.integer :total
      t.integer :people_number

      t.timestamps
    end
  end
end
