require 'rails_helper'
require 'faker'


RSpec.describe Phone, type: :model do

  let(:subject) {create :phone}

  it "Valid with all attributes" do
    expect(subject).to be_valid
  end

  it "Not valid without person_id attribute" do
    subject.person_id = nil
  	expect(subject).to_not be_valid
  end

  it "Not valid without phone attribute" do
  	subject.phone = nil
  	expect(subject).to_not be_valid
  end
end
