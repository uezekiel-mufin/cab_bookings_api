class Api::V1::CabsController < ApplicationController
  def index
    @cabs = Cab.all
    render json: @cabs
  end

  def create
    @user = User.first
    @cab = Cab.new(cab_params)
    @cab.user = @user
    if @cab.save
      render json: @cab, status: :created
    else
      render json: @cab.errors, status: :unprocessable_entity
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
    render json: { message: 'Cab successfully deleted' }
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Cab not found' }, status: :not_found
  end

  private

  def cab_params
    params.require(:cab).permit(
      :model, :manufacturer, :transmission, :rental_price, :discount, :engine_type,
      :seating_capacity, :body_type, :description, :image_url
    )
  end

end
