class Account < ApplicationRecord
  belongs_to :person

  validates_presence_of :username, :password
end
