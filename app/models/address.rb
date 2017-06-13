class Address < ApplicationRecord
  belongs_to :person

  validates_presence_of :street, :cep, :city, :state
end
