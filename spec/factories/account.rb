require 'faker'


FactoryGirl.define do
	factory :account do
		username Faker::Name.first_name
		password Faker::Lorem.word
		association :person
	end
end