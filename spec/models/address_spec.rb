require 'rails_helper'

RSpec.describe Address, type: :model do

  let(:address) {create :address}

  it "Valid with all attributes" do
  	expect(address).to be_valid
  end

  it "Not valid without person_id attribute" do
    address.person_id = nil
  	expect(address).to_not be_valid
  end

  it "Not valid without street attribute" do
  	address.street = nil
  	expect(address).to_not be_valid
  end

  it "Not valid without cep attribute" do
  	address.cep = nil
  	expect(address).to_not be_valid
  end

  it "Not valid without city attribute" do
  	address.city = nil
  	expect(address).to_not be_valid
  end

  it "Not valid without state attribute" do
  	address.state = nil
  	expect(address).to_not be_valid
  end
end
