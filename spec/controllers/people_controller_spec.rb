require 'rails_helper'


RSpec.describe PeopleController do

	before :each do
		@person = create(:person,
			name: 'Joaozinho',
			birthday: "1990-04-28",
			user_id: user.id)
	end

	let(:user) {create :user}

	describe 'GET #index' do
		it 'Renders the :index view' do
			get :index
			expect(response).to render_template(:index)
		end
	end


	describe 'GET #new' do
		it 'Renders the :new view' do
			get :new
			expect(response).to render_template(:new)
		end

		it 'Get 200 status code' do
			get :new
			expect(response.status).to eq(200)
		end
	end

	describe 'POST #create' do
		context 'With valid attributes' do
			it 'Creates a new person' do
				expect{
					post :create, params: {person: FactoryGirl.attributes_for(:person, user_id: user.id)}
					}.to change{Person.count}.by(1)
			end
		end
	end

	describe 'GET #edit' do
		it 'Renders the :edit view' do
			get :edit, params: {id: @person.id}
			expect(response).to render_template(:edit)
		end

		it 'Get 200 status code' do
			get :edit, params: {id: @person.id}
			expect(response.status).to eq(200)
		end
	end

	describe 'GET #show' do
		it 'Renders the :show view' do
			get :show, params: {id: @person.id}
			expect(response).to render_template(:show)
		end

		it 'Get 200 status code' do
			get :show, params: {id: @person.id}
			expect(response.status).to eq(200)
		end
	end

	describe 'PATCH/PUT #update' do
		context 'With valid attributes' do
			it 'updates a existent person' do
				put :update, params: {id: @person.id, person: FactoryGirl.attributes_for(:person, name: "Victor Alessander")}
				@person.reload
				expect(assigns(:person)).to eq(@person)
				expect(response).to redirect_to(:action => :show)
			end
		end
		
		context 'Not valid without a attribute' do
			it 'Does not change @person attributes' do
				put :update, params: {id: @person.id, person: FactoryGirl.attributes_for(:person,
					name: nil,
					birthday: '1997-04-05',
					email: 'alessander@protonmail.com')}
				@person.reload
				expect(@person.name).to eq("Joaozinho")
				expect(@person.birthday).to_not eq('1997-04-05')
			end

			it 'Re-renders the edit method' do
				put :update, params: {id: @person.id, person: FactoryGirl.attributes_for(:person,
					name: nil,
					birthday: '1997-04-05')}
				expect(response).to render_template(:edit)
			end
		end
	end

	describe 'DELETE #destroy' do
		it 'Destroy a existent person' do
			expect{
				delete :destroy, params: {id: @person.id}
				}.to change{Person.count}.by(-1)
		end

		it 'Redirects to person#index' do
			delete :destroy, params: {id: @person.id}
			expect(response).to redirect_to(:action => :index)
		end
	end

end