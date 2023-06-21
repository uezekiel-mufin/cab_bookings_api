class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[destroy]
  before_action :index_params, only: %i[index]

  def index
    @reservations = Reservation.includes(:cab).where(user_id: params[:user])
    render json: @reservations, each_serializer: ReservationSerializer
  end

  def create
    @user = User.find(params[:reservation][:user_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user = @user
    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @reservation.destroy
      render json: { message: 'Reservation successfully destroyed' }, status: :ok
    else
      render json: { error: 'Failed to destroy reservation' }, status: :unprocessable_entity
    end
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:reserve_date, :user_id, :cab_id, :city)
  end

  def index_params
    params.permit(:user)
  end
end
