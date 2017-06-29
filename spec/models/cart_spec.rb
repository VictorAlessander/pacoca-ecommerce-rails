require 'rails_helper'
require 'faker'


RSpec.describe Cart, type: :model do
	let(:person) {create :person}
	
	let(:category) {create :category}
	
	let(:product) {create :product}
	
	
	subject {described_class.new}
	
	it "Valid with all attributes" do
		subject.cod = product.cod
		subject.name = product.name
		subject.price = product.price
		subject.quantity = 1
		subject.person_id = person.id
		expect(subject).to be_valid
	end

	it "Not valid without person_id attribute" do
		expect(subject).to_not be_valid
	end

	it "Not valid without cod attribute" do
		subject.person_id = person.id
		expect(subject).to_not be_valid
	end

	it "Not valid without name attribute" do
		subject.cod = product.cod
		subject.person_id = person.id
		expect(subject).to_not be_valid
	end

	it "Not valid without price attribute" do
		subject.cod = product.cod
		subject.name = product.name
		subject.person_id = person.id
		expect(subject).to_not be_valid
	end

	it "Not valid without quantity attribute" do
		subject.cod = product.cod
		subject.name = product.name
		subject.price = product.price
		subject.person_id = person.id
		expect(subject).to_not be_valid
	end
end