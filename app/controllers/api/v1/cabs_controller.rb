class Api::V1::CabsController < ApplicationController
  def index
    render json: Cab.all
  end

  def create
    @car = Cab.new(car_params.merge(user_id: current_user_id))

    if @cab.save
      render json: @cab, status: :created
    else
      render json: @cab, status: :unprocessable_entity
    end
  end

  private

  def cab_params
    params.require(:cab).permit(:manufacturer, :description, :image_url, :transmission, :model, :rental_price,
                                :seating_capacity, :body_type, :discount, :engine_type)
  end
end
