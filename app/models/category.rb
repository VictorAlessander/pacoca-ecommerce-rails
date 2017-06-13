class Category < ApplicationRecord
  validates_presence_of :cod, :name
  
  has_many :products
end
