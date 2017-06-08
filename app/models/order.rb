class Order < ApplicationRecord
  belongs_to :person
  belongs_to :cart
end
