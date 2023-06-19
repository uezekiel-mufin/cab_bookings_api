require 'rails_helper'

RSpec.describe Api::V1::CabsController, type: :controller do
  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end

    it 'returns all cabs as JSON' do
      cab1 = FactoryBot.create(:cab)
      cab2 = FactoryBot.create(:cab)
      get :index
      expect(response.body).to eq([cab1, cab2].to_json)
    end
  end

  describe 'POST #create' do
    context 'with valid parameters' do
      let(:user) { create(:user) }
      let(:valid_params) { attributes_for(:cab, user_id: user.id) }

      it 'creates a new cab' do
        expect do
          post :create, params: { cab: valid_params }
        end.to change(Cab, :count).by(1)
      end

      it 'returns a JSON response with the created cab' do
        post :create, params: { cab: valid_params }
        expect(response).to have_http_status(:created)
        expect(response.body).to eq(Cab.last.to_json)
      end
    end
end

  describe 'GET #show' do
    context 'with a valid cab ID' do
      let(:cab) { create(:cab) }

      it 'returns a successful response' do
        get :show, params: { id: cab.id }
        expect(response).to be_successful
      end

      it 'returns the specified cab as JSON' do
        get :show, params: { id: cab.id }
        expect(response.body).to eq(cab.to_json)
      end
    end

    context 'with an invalid cab ID' do
      it 'returns a not found response' do
        get :show, params: { id: 999 }
        expect(response).to have_http_status(:not_found)
        expect(response.body).to eq({ error: 'Cab not found' }.to_json)
      end
    end
  end

  describe 'DELETE #destroy' do
    context 'with a valid cab ID' do
      let!(:cab) { create(:cab) }

      it 'destroys the specified cab' do
        expect do
          delete :destroy, params: { id: cab.id }
        end.to change(Cab, :count).by(-1)
      end

      it 'returns a JSON response with a success message' do
        delete :destroy, params: { id: cab.id }
        expect(response).to have_http_status(:ok)
        expect(response.body).to eq({ message: 'Cab successfully deleted' }.to_json)
      end
    end

    context 'with an invalid cab ID' do
      it 'returns a not found response' do
        delete :destroy, params: { id: 999 }
        expect(response).to have_http_status(:not_found)
        expect(response.body).to eq({ error: 'Cab not found' }.to_json)
      end
    end
  end
end
