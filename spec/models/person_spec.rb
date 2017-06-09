require 'rails_helper'
require 'faker'


RSpec.describe Person, type: :model do
	subject {described_class.new}

	it "Valid with all attributes" do
		subject.name = Faker::Name.name
		subject.birthday = Faker::Date.birthday
		subject.email = Faker::Internet.email
		expect(subject).to be_valid
	end

	it "Not valid without name" do
		expect(subject).to_not be_valid
	end

	it "Not valid without birthday" do
		subject.name = Faker::Name.name
		expect(subject).to_not be_valid
	end

	it "Not valid without email" do
		subject.name = Faker::Name.name
		subject.birthday = Faker::Date.birthday
		expect(subject).to_not be_valid
	end
end