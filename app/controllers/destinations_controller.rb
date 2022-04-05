class DestinationsController < ApplicationController
  def index
    @destinations = Destination.all
    @user = current_user

    @markers = @destinations.geocoded.map do |destination|
      {
        lat: destination.latitude,
        lng: destination.longitude,
        info_window: render_to_string(partial: "info_window", locals: { destination: destination })
      }
    end
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def new
    @destination = Destination.new # needed to instantiate the form
  end

  def create
    @destination = Destination.new(destination_params)
    @destination.user = current_user
    @destination.save
    redirect_to destinations_path(@destination)
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:id])
    @destination.update(destination_params)
    redirect_to user_destinations_path(@destination)
  end

  def destroy
    @destination = Destination.find(params[:id])
    @destination.destroy
    redirect_to user_destinations_path(@destination)
  end

  private

  def destination_params
    params.require(:destination).permit(:name, :address, :visited, :rating)
  end
end
