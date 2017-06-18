class Cart < ApplicationRecord
  belongs_to :person
  
  validates_presence_of :cod, :name, :price, :quantity

  def self.total_price
    calculate_total = Cart.sum("price * quantity")
  end
end
