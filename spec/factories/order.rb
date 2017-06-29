require 'faker'


FactoryGirl.define do
	factory :order do
		cod Faker::Number.number(3)
		name Faker::Commerce.product_name
		price Faker::Commerce.price
		quantity Faker::Number.number(1)
		total Sum("price * quantity")
		association :person
		association :cart
	end
end