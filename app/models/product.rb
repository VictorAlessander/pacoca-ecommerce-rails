class Product < ApplicationRecord
  belongs_to :category
  
  validates_presence_of :cod, :name, :price
end
