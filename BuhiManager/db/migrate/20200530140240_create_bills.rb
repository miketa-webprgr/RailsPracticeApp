class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.boolean :status, default: false
      t.string :name, null: false, unique: true
      t.date :date, null: false 
      t.string :item, null: false
      t.text :description
      t.integer :price, null: false

      t.timestamps
    end
  end
end
