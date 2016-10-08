class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, index: true
      t.text :decription, index:true
      t.integer :device_id, index: true
      t.integer :brand_id, index: true
      t.decimal :price
      t.integer :stock_quantity
      t.date :date_expected_at

      t.timestamps null: false
    end
  end
end
