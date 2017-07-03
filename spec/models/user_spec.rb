require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {create :user}

  describe "Associations" do
    it {should have_one(:person)}
  end
end
