require 'rails_helper'
require 'faker'


RSpec.describe Cart, type: :model do

	let(:cart) {create :cart}
	
	it "Valid with all attributes" do
		expect(cart).to be_valid
	end

	it "Not valid without person_id attribute" do
		cart.person_id = nil
		expect(cart).to_not be_valid
	end

	it "Not valid without cod attribute" do
		cart.cod = nil
		expect(cart).to_not be_valid
	end

	it "Not valid without name attribute" do
		cart.name = nil
		expect(cart).to_not be_valid
	end

	it "Not valid without price attribute" do
		cart.price = nil
		expect(cart).to_not be_valid
	end

	it "Not valid without quantity attribute" do
		cart.quantity = nil
		expect(cart).to_not be_valid
	end
end