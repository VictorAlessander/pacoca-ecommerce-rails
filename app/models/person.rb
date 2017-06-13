class Person < ApplicationRecord
	validates_presence_of :name, :birthday, :email

	has_one :account
	has_one :address
	has_one :cart
	has_many :phones
	has_many :orders
end
