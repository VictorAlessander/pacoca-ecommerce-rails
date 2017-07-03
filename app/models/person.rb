class Person < ApplicationRecord
	belongs_to :user

	validates_presence_of :name, :birthday

	has_one :address, :dependent => :destroy
	has_one :cart, :dependent => :destroy
	has_many :phones, :dependent => :destroy
	has_many :orders, :dependent => :destroy

	accepts_nested_attributes_for :address, :phones
end
