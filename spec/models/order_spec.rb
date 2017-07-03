require 'rails_helper'
require 'faker'


RSpec.describe Order, type: :model do

	let(:order) {create :order}

	it "Valid with all attributes" do
		expect(order).to be_valid
	end

	it "Not valid without person_id attribute" do
		order.person_id = nil
		expect(order).to_not be_valid
	end

	it "Not valid without cod attribute" do
		order.cod = nil
		expect(order).to_not be_valid
	end

	it "Not valid without name attribute" do
		order.name = nil
		expect(order).to_not be_valid
	end

	it "Not valid without price attribute" do
		order.price = nil
		expect(order).to_not be_valid
	end

	it "Not valid without quantity attribute" do
		order.quantity = nil
		expect(order).to_not be_valid
	end

	it "Not valid without total attribute" do
		order.total = nil
		expect(order).to_not be_valid
	end
end