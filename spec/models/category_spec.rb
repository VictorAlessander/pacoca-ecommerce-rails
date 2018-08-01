require 'rails_helper'
require 'faker'


RSpec.describe Category, type: :model do
	let(:category) {create :category}

	it "Valid with all attributes" do
		expect(category).to be_valid
	end

	it "Not valid without cod attribute" do
		category.cod = nil
		expect(category).to_not be_valid
	end

	it "Not valid without name attribute" do
		category.name = nil
		expect(category).to_not be_valid
	end

	describe "Associations" do
		it {should have_many(:products)}
	end
end
