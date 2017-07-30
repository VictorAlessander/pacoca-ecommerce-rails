require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  let(:user) {create :user}
  let(:category) {create :category}
  let(:product) {create :product}

  describe "GET #index" do
    it "renders the :index view" do
      get :index
      expect(response).to render_template(:index)
    end

    it "returns 200 status code" do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe "GET #add_product" do
    context "if product already exists in cart" do
      it "increment product quantity in cart"
    end

    context "if product does not exists in cart" do
      it "add product to cart"
    end
  end
end