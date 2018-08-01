require 'faker'


FactoryBot.define do
	factory :address do
		street Faker::Address.street_name
		cep Faker::Address.zip_code
		city Faker::Address.city
		state Faker::Address.state
		association :person
	end
end
