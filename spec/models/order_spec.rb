require 'rails_helper'
require 'faker'


RSpec.describe Order, type: :model do
	let(:person) {Person.create(
		name: Faker::Name.name,
		birthday: Faker::Date.birthday,
		email: Faker::Internet.email)}


	let(:category) {Category.create(
		cod: Faker::Number.number(3),
		name: Faker::Commerce.department(1))}

	let(:product) {Product.create(
		cod: Faker::Number.number(3),
		name: Faker::Commerce.product_name,
		price: Faker::Commerce.price,
		category_id: category.id)}

	let(:cart) {Cart.create(
		cod: product.cod,
		name: product.name,
		price: product.price,
		quantity: 1,
		total: product.price,
		person_id: person.id)}

	subject {described_class.new}

	it "Valid with all attributes" do
		subject.cod = cart.cod
		subject.name = cart.name
		subject.price = cart.price
		subject.quantity = cart.quantity
		subject.total = cart.total
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