require 'rails_helper'


RSpec.describe HomeController do

	context 'GET #index' do
		it "renders the :index view" do
			get :index
			expect(response).to render_template(:index)
		end

		it "Get 200 status code" do
			get :index
			expect(response.status).to eq(200)
		end
	end
end