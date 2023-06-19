require 'rails_helper'

RSpec.describe Api::V1::ReservationsController, type: :controller do
  describe 'GET index' do
    let(:user) { create(:user) }
    let!(:reservation1) { create(:reservation, user:) }
    let!(:reservation2) { create(:reservation, user:) }

    it 'returns a list of reservations for a user' do
      get :index, params: { user: user.id }
      expect(response).to have_http_status(:success)

      parsed_response = JSON.parse(response.body)
      expect(parsed_response.count).to eq(2)

      expect(parsed_response[0]['id']).to eq(reservation1.id)
      expect(parsed_response[0]['user_id']).to eq(reservation1.user_id)
      expect(parsed_response[0]['reserve_date']).to eq(reservation1.reserve_date)
      expect(parsed_response[0]['city']).to eq(reservation1.city)
      expect(parsed_response[0]['cab']['id']).to eq(reservation1.cab.id)

      expect(parsed_response[1]['id']).to eq(reservation2.id)
      expect(parsed_response[1]['user_id']).to eq(reservation2.user_id)
      expect(parsed_response[1]['reserve_date']).to eq(reservation2.reserve_date)
      expect(parsed_response[1]['city']).to eq(reservation2.city)
      expect(parsed_response[1]['cab']['id']).to eq(reservation2.cab.id)
    end
  end

  describe 'POST create' do
    let(:user) { create(:user) }
    let(:cab) { create(:cab, user:) }
    let(:valid_params) do
      { reservation: { reserve_date: '2023-06-18', user_id: user.id, cab_id: cab.id, city: 'New York' } }
    end
    let(:invalid_params) do
      { reservation: { reserve_date: nil, user_id: user.id, cab_id: cab.id, city: 'New York' } }
    end

    it 'creates a new reservation with valid parameters' do
      expect do
        post :create, params: valid_params
      end.to change(Reservation, :count).by(1)
      expect(response).to have_http_status(:created)
      expect(JSON.parse(response.body)['reserve_date']).to eq('2023-06-18')
    end

    it 'returns an error with invalid parameters' do
      post :create, params: invalid_params
      expect(response).to have_http_status(:unprocessable_entity)
      expect(JSON.parse(response.body)).to include('reserve_date')
    end
  end

  describe 'DELETE destroy' do
    let!(:reservation) { create(:reservation) }

    it 'destroys the reservation' do
      expect do
        delete :destroy, params: { id: reservation.id }
      end.to change(Reservation, :count).by(-1)
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)['message']).to eq('Reservation successfully destroyed')
    end

    it 'returns an error if the reservation cannot be destroyed' do
      allow_any_instance_of(Reservation).to receive(:destroy).and_return(false)
      delete :destroy, params: { id: reservation.id }
      expect(response).to have_http_status(:unprocessable_entity)
      expect(JSON.parse(response.body)['error']).to eq('Failed to destroy reservation')
    end
  end
end
