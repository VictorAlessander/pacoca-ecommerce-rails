require 'faker'


FactoryBot.define do
	factory :person do
		name Faker::Name.name
		birthday Faker::Date.birthday
		association :user
	end
end
