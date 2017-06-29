require 'rails_helper'
require 'faker'


RSpec.describe Account, type: :model do
	let(:person) {create :person}

  it "Valid with all attributes" do
    subject.username = Faker::Name.first_name
    subject.password = Faker::Lorem.word
    subject.person_id = person.id
    expect(subject).to be_valid
  end

  it "Not valid without person relationship" do
  	expect(subject).to_not be_valid
  end

  it "Not valid without username" do
  	subject.person_id = person.id
  	expect(subject).to_not be_valid
  end

  it "Not valid without password" do
  	subject.username = Faker::Name.first_name
  	subject.person_id = person.id
  	expect(subject).to_not be_valid
  end
end