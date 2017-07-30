require 'rails_helper'


RSpec.describe OrdersController, type: :controller do

	let(:user) {create :user}
	let(:order) {create :order}

	context 'GET #index' do
		it "Render the :index view" do
			sign_in user
			get :index
			expect(response).to render_template(:index)
		end

		it "Get 200 status code" do
			sign_in user
			get :index
			expect(response.status).to eq(200)
		end
	end

	context 'GET #new' do
		it "Render the :new view" do
			sign_in user
			get :new
			expect(response).to render_template(:new)
		end

		it "Get 200 status code" do
			sign_in user
			get :new
			expect(response.status).to eq(200)
		end
	end

	context 'GET #show' do
		it "Render the :show view" do
			sign_in user
			get :show, params: {id: order.id}
			expect(response).to render_template(:show)
		end

		it "Get 200 status code" do
			sign_in user
			get :show, params: {id: order.id}
			expect(response.status).to eq(200)
		end
	end

	context 'GET #edit' do
		it "Render the :edit view" do
			sign_in user
			get :edit, params: {id: order.id}
			expect(response).to render_template(:edit)
		end

		it "Get 200 status code" do
			sign_in user
			get :edit, params: {id: order.id}
			expect(response.status).to eq(200)
		end
	end
end