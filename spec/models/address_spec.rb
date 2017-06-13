require 'rails_helper'

RSpec.describe Address, type: :model do
  let(:person) {Person.create(
  	name: Faker::Name.name,
  	birthday: Faker::Date.birthday,
  	email: Faker::Internet.email)}

  subject {described_class.new}

  it "Valid with all attributes" do
  	subject.street = Faker::Address.street_name
  	subject.cep = Faker::Address.zip_code
  	subject.city = Faker::Address.city
  	subject.state = Faker::Address.state
  	subject.person_id = person.id
  end

  it "Not valid without person_id attribute" do
  	expect(subject).to_not be_valid
  end

  it "Not valid without street attribute" do
  	subject.person_id = person.id
  	expect(subject).to_not be_valid
  end

  it "Not valid without cep attribute" do
  	subject.street = Faker::Address.street_name
  	subject.person_id = person.id
  	expect(subject).to_not be_valid
  end

  it "Not valid without city attribute" do
  	subject.street = Faker::Address.street_name
  	subject.cep = Faker::Address.zip_code
  	subject.person_id = person.id
  	expect(subject).to_not be_valid
  end

  it "Not valid without state attribute" do
  	subject.street = Faker::Address.street_name
  	subject.cep = Faker::Address.zip_code
  	subject.city = Faker::Address.city
  	subject.person_id = person.id
  	expect(subject).to_not be_valid
  end
end
