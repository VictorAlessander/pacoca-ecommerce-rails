require 'faker'


FactoryBot.define do
	factory :phone do
		phone Faker::PhoneNumber.cell_phone
		association :person
	end
end
