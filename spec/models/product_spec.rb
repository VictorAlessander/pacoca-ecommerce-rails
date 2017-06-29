require 'rails_helper'
require 'faker'


RSpec.describe Product, type: :model do
	let(:category) {create :category}
	subject{described_class.new}
	
	it "Valid with all attributes" do
		subject.cod = Faker::Number.number(3)
		subject.name = Faker::Commerce.product_name
		subject.price = Faker::Commerce.price
		subject.category_id = category.id
		expect(subject).to be_valid
	end

	it "Not valid without category_id attribute" do
		expect(subject).to_not be_valid
	end

	it "Not valid without cod attribute" do
		subject.category_id = category.id
		expect(subject).to_not be_valid
	end

	it "Not valid without name attribute" do
		subject.cod = Faker::Number.number(3)
		subject.category_id = category.id
		expect(subject).to_not be_valid
	end

	it "Not valid without price attribute" do
		subject.cod = Faker::Number.number(3)
		subject.name = Faker::Commerce.product_name
		subject.category_id = category.id
		expect(subject).to_not be_valid
	end
end