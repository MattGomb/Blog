require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET #index' do
    before(:each) { get '/users' }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end

    it 'returns the correct placeholder text' do
      expect(response.body).to include('Here is a list of users')
    end
  end

  describe 'GET #show' do
    before(:each) { get '/users/:id' }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the index template' do
      expect(response).to render_template(:show)
    end

    it 'returns the correct placeholder text' do
      expect(response.body).to include('Here is a specific user')
    end
  end
end
