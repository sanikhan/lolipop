class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :user_id
      t.integer :initial_price
      t.integer :selling_price
      t.integer :subcategory_id
      t.string :opening_date
      t.date :closing_date
      t.string :availibility

      t.timestamps null: false
    end
  end
end
