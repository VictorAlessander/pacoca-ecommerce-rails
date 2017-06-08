class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.integer :cod
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.decimal :total
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
