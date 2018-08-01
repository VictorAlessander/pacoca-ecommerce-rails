require 'faker'


FactoryBot.define do
	factory :order do
		cod Faker::Number.number(3)
		name Faker::Commerce.product_name
		price 100.00
		quantity 1
		total 100.00
		association :person
	end
end
