require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET #index' do
    subject { get '/users/:id/posts' }
    before { subject }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end

    it 'returns the correct placeholder text' do
      expect(response.body).to include('Here is a list of posts for a given user')
    end
  end

  describe 'GET #show' do
    subject { get '/users/:user_id/posts/:id' }
    before { subject }

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the index template' do
      expect(response).to render_template(:show)
    end

    it 'returns the correct placeholder text' do
      expect(response.body).to include('Here is a specific post of a given user')
    end
  end
end
