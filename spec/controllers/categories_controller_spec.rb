require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

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
end