require 'rails_helper'
require 'faker'


RSpec.describe Order, type: :model do
	let(:person) {create :person}

	let(:category) {create :category}

	let(:product) {create :product}

	let(:cart) {create :cart}

	subject {described_class.new}

	it "Valid with all attributes" do
		subject.cod = cart.cod
		subject.name = cart.name
		subject.price = cart.price
		subject.quantity = cart.quantity
		subject.total = (cart.price * cart.quantity)
		subject.person_id = person.id
		subject.cart_id = cart.id
		expect(subject).to be_valid
	end

	it "Not valid without person_id attribute" do
		expect(subject).to_not be_valid
	end

	it "Not valid without cart_id attribute" do
		subject.person_id = person.id
		expect(subject).to_not be_valid
	end

	it "Not valid without cod attribute" do
		subject.person_id = person.id
		subject.cart_id = cart.id
		expect(subject).to_not be_valid
	end

	it "Not valid without name attribute" do
		subject.cod = cart.cod
		subject.person_id = person.id
		subject.cart_id = cart.id
		expect(subject).to_not be_valid
	end

	it "Not valid without price attribute" do
		subject.cod = cart.cod
		subject.name = cart.name
		subject.person_id = person.id
		subject.cart_id = cart.id
		expect(subject).to_not be_valid
	end

	it "Not valid without quantity attribute" do
		subject.cod = cart.cod
		subject.name = cart.name
		subject.price = cart.price
		subject.person_id = person.id
		subject.cart_id = cart.id
		expect(subject).to_not be_valid
	end

	it "Not valid without total attribute" do
		subject.cod = cart.cod
		subject.name = cart.name
		subject.price = cart.price
		subject.quantity = cart.quantity
		subject.person_id = person.id
		subject.cart_id = cart.id
		expect(subject).to_not be_valid
	end
end