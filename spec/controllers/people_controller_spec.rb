require 'rails_helper'
require 'faker'


RSpec.describe PeopleController do

	let(:person) {Person.create(
		name: Faker::Name.name,
		birthday: Faker::Date.birthday,
		email: Faker::Internet.email)}

	describe 'GET #index' do
		it 'renders the :index view' do
			get :index
			expect(response).to render_template(:index)
		end
	end


	describe 'GET #new' do
		it 'renders the :new view' do
			get :new
			expect(response).to render_template(:new)
		end

		it 'get 200 status code' do
			get :new
			expect(response.status).to eq(200)
		end
	end

	# INCOMPLETE

	describe 'POST #create' do
		context 'with valid attributes' do
			it 'creates a new person' do
				post :create, params: {person: {id: person.id,
					name: person.name,
					birthday: person.birthday,
					email: person.email
					}
				}
				expect{:params}.to change{Person.count}.by(1)
			end
		end
	end

	describe 'GET #edit' do
		it 'renders the :edit view' do
			get :edit, params: {id: person.id}
			expect(response).to render_template(:edit)
		end

		it 'get 200 status code' do
			get :edit, params: {id: person.id}
			expect(response.status).to eq(200)
		end
	end

	describe 'GET #show' do
		it 'renders the :show view' do
			get :show, params: {id: person.id}
			expect(response).to render_template(:show)
		end

		it 'get 200 status code' do
			get :show, params: {id: person.id}
			expect(response.status).to eq(200)
		end
	end

	describe 'PATCH/PUT #update' do
		context 'with valid attributes' do
			it 'updates a existent person'
		end
	end

	describe 'DELETE #destroy' do
		it 'destroy a existent person'
		it 'redirects to person#index'
	end

end