require 'rails_helper'
require 'faker'


RSpec.describe Category, type: :model do
	subject {described_class.new}
	
	it "Valid with all attributes" do
		subject.cod = Faker::Number.number(3)
		subject.name = Faker::Commerce.department(1)
		expect(subject).to be_valid
	end
	
	it "Not valid without cod attribute" do
		expect(subject).to_not be_valid
	end

	it "Not valid without name attribute" do
		subject.cod = Faker::Number.number(3)
		expect(subject).to_not be_valid
	end
end