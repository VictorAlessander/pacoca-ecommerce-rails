class Category < ApplicationRecord
  validates_presence_of :cod, :name
  
end
