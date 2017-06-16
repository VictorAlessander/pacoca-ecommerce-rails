require 'faker'


FactoryGirl.define do
	factory :person do
		name Faker::Name.name
		birthday Faker::Date.birthday
		email Faker::Internet.email
	end
end