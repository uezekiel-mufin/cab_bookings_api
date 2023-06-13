class Api::V1::CabsController < ApplicationController
  def index
    @cabs = Cab.all
    render json: @cabs
  end

  def create
    @car = Cab.new(car_params.merge(user_id: current_user_id))

    if @cab.save
      render json: @cab, status: :created
    else
      render json: @cab, status: :unprocessable_entity
    end
  end

  def show
    @cab = Cab.find(params[:id])
    render json: @cab
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Cab not found' }, status: :not_found
  end

  def destroy
    @cab = Cab.find(params[:id])
    @cab.destroy
    render json: {message: 'Cab successfully deleted' }
  rescue ActiveRecord::RecordNotFound
    render json: {error: 'Cab not found' }, status: :not_found
  end

  private

  def cab_params
    params.require(:cab).permit(:manufacturer, :description, :image_url, :transmission, :model, :rental_price,
                                :seating_capacity, :body_type, :discount, :engine_type)
  end
end
