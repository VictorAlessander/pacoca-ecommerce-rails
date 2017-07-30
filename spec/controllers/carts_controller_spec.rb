require 'rails_helper'

RSpec.describe CartsController, type: :controller do
  let(:user) {create :user}

  describe "GET #index" do
    it "renders the :index view" do
      sign_in user
      get :index
      expect(response).to render_template(:index)
    end

    it "returns 200 status code" do
      sign_in user
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #increment_product" do
    context "if the product already exists in cart" do
      it "increment quantity of product by +1"
    end

    context "if the product doesn't exists in cart" do
      it "add the product to cart"
    end
  end
end