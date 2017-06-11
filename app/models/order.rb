class Order < ApplicationRecord
  belongs_to :person
  belongs_to :cart

  validates_presence_of :cod, :name, :price, :quantity, :total
end
