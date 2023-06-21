class CreateCabs < ActiveRecord::Migration[7.0]
  def change
    create_table :cabs do |t|
      t.string :manufacturer
      t.text :description
      t.string :image_url
      t.string :transmission
      t.string :model
      t.float :rental_price      
      t.integer :seating_capacity
      t.string :body_type
      t.integer :discount
      t.string :engine_type

      t.timestamps
    end
  end
end
