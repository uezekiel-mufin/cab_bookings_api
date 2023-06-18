class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :created_at, :updated_at, :reserve_date, :city

  belongs_to :cab
  # belongs_to :user
end
