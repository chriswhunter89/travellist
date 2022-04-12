class AlbumsController < ApplicationController

  def show
    @destination = Destination.find(params[:destination_id])
    @album = Album.find(params[:id])
  end

  def new
    @destination = Destination.find(params[:destination_id])
    @album = Album.new # needed to instantiate the form
  end

  def create
    @album = Album.new(album_params)
    @destination = Destination.find(params[:destination_id])
    @album.destination = @destination
    @album.save
    redirect_to destination_path(@destination)
  end

  def edit
    @destination = Destination.find(params[:destination_id])
    @album = Album.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:destination_id])
    @album = Album.find(params[:id])
    @album.update(album_params)
    redirect_to destination_path(@destination)
  end

  def destroy
    @destination = Destination.find(params[:destination_id])
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to destination_path(@destination)
  end

  private

  def set_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:title, :description, album_photos: [])
  end
end
