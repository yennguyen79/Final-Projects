class CreateFoodItems < ActiveRecord::Migration[5.1]
  def change
    create_table :food_items do |t|
      t.string :name
      t.decimal :price
      t.text :description      
      t.integer :section_id
      t.timestamps
    end
  end
end
