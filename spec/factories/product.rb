require 'faker'


FactoryBot.define do
	factory :product do
		cod Faker::Number.number(3)
		name Faker::Commerce.product_name
		price Faker::Commerce.price
		association :category
	end
end
