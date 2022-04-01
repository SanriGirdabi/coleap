class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars, id: false do |t|
      t.string :id, primary_key: true
      t.string :make
      t.string :model
      t.string :colors, array: true, default: []
      t.integer :price
      t.string :photo

      t.timestamps
    end
  end
end
