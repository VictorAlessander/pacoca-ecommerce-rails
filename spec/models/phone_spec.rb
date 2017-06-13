require 'rails_helper'
require 'faker'


RSpec.describe Phone, type: :model do
  let(:person) {Person.create(
  	name: Faker::Name.name,
  	birthday: Faker::Date.birthday,
  	email: Faker::Internet.email)}

  subject {described_class.new}

  it "Valid with all attributes" do
  	subject.phone = Faker::PhoneNumber.cell_phone
  	subject.person_id = person.id
  end

  it "Not valid without person_id attribute" do
  	expect(subject).to_not be_valid
  end

  it "Not valid without phone attribute" do
  	subject.person_id = person.id
  	expect(subject).to_not be_valid
  end
end
