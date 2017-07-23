class Order < ApplicationRecord
  belongs_to :person

  validates_presence_of :cod, :name, :price, :quantity, :total

  def self.search(search)
    where("identification LIKE ?", "%#{search}%")
  end

  def self.total_price(order_token)
    Order.where(identification: order_token).sum("price * quantity")
  end
end
