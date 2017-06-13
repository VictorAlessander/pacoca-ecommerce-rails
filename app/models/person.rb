class Person < ApplicationRecord
	validates_presence_of :name, :birthday, :email

	has_one :account, :dependent => :destroy
	has_one :address, :dependent => :destroy
	has_one :cart, :dependent => :destroy
	has_many :phones, :dependent => :destroy
	has_many :orders, :dependent => :destroy

	accepts_nested_attributes_for :address, :phones, :account
end
