class Phone < ApplicationRecord
  belongs_to :person

  validates_presence_of :phone
end
