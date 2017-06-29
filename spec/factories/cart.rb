require 'faker'


FactoryGirl.define do
	factory :cart do
		cod Faker::Number.number(3)
		name Faker::Commerce.product_name
		price 21.00
		quantity 1
		association :person
	end
end