require 'rails_helper'
require 'faker'


RSpec.describe Person, type: :model do
	let(:person) {create :person}

	it "Valid with all attributes" do
		expect(person).to be_valid
	end

	it "Not valid without name" do
		person.name = nil
		expect(person).to_not be_valid
	end

	it "Not valid without birthday" do
		person.birthday = nil
		expect(person).to_not be_valid
	end

	describe "Associations" do
		it {should have_one(:address)}
		it {should have_one(:cart)}
		it {should have_many(:orders)}
		it {should have_many(:phones)}
		it {should belong_to(:user)}
	end
end