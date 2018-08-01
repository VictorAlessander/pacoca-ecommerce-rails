require 'rails_helper'
require 'faker'


RSpec.describe Product, type: :model do

	let(:product) {create :product}

	it "Valid with all attributes" do
		expect(product).to be_valid
	end

	it "Not valid without category_id attribute" do
		product.category_id = nil
		expect(product).to_not be_valid
	end

	it "Not valid without cod attribute" do
		product.cod = nil
		expect(product).to_not be_valid
	end

	it "Not valid without name attribute" do
		product.name = nil
		expect(product).to_not be_valid
	end

	it "Not valid without price attribute" do
		product.price = nil
		expect(product).to_not be_valid
	end
end
