require 'rails_helper'

RSpec.describe CheckoutController, type: :controller do

  let(:user) {create :user}

  describe "GET #index" do
    it "renders the :index view" do
      sign_in user
      get :index
      expect(response).to render_template(:index)
    end

    it "returns http success" do
      sign_in user
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
