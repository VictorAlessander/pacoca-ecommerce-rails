class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.integer :cod
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.decimal :total
      t.references :person, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
