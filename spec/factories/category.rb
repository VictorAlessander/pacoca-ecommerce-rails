require 'faker'


FactoryGirl.define do
	factory :category do
		cod Faker::Number.number(3)
		name Faker::Commerce.department(1)
	end
end