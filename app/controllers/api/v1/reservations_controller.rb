class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]
  before_action :index_params, only: %i[index]

  def index
    @reservations = Reservation.where(user_id: params[:user])
    render json: @reservations
  end

  def show
    render json: @reservation
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

  def update
    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation.destroy
    head :no_content
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
