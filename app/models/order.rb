class Order < ApplicationRecord
  belongs_to :person

  validates_presence_of :cod, :name, :price, :quantity, :total
end
