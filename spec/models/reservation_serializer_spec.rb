require 'rails_helper'

RSpec.describe ReservationSerializer, type: :serializer do
  let(:user) { create(:user) }
  let(:cab) { create(:cab, user:) }
  let(:reservation) { create(:reservation, user:, cab:) }
  let(:serializer) { described_class.new(reservation) }
  let(:serialization) { ActiveModelSerializers::Adapter.create(serializer) }
  let(:serialized_reservation) { JSON.parse(serialization.to_json) }

  it 'includes the expected attributes' do
    expect(serialized_reservation['id']).to eq(reservation.id)
    expect(serialized_reservation['user_id']).to eq(reservation.user_id)
    expect(serialized_reservation['created_at']).to eq(reservation.created_at.as_json)
    expect(serialized_reservation['updated_at']).to eq(reservation.updated_at.as_json)
    expect(serialized_reservation['reserve_date']).to eq(reservation.reserve_date)
    expect(serialized_reservation['city']).to eq(reservation.city)
  end

  it 'includes the associated cab' do
    serialized_cab = serialized_reservation['cab']
    expect(serialized_cab).to be_a(Hash)
    expect(serialized_cab['id']).to eq(cab.id)
    expect(serialized_cab['manufacturer']).to eq(cab.manufacturer)
    # Add assertions for other cab attributes as needed
  end

  it 'includes the associated user' do
    serialized_user = serialized_reservation['user']
    expect(serialized_user).to be_a(Hash)
    expect(serialized_user['id']).to eq(user.id)
    expect(serialized_user['name']).to eq(user.name)
    # Add assertions for other user attributes as needed
  end
end
