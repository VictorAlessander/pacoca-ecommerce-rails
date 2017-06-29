require 'faker'


FactoryGirl.define do
	factory :cart do
		cod Faker::Number.number(3)
		name Faker::Commerce.product_name
		price Faker::Commerce.price
		quantity Faker::Number.number(1)
		association :person
	end
end