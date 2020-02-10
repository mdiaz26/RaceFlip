class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :cost
      t.integer :top_speed

      t.timestamps
    end
  end
end
