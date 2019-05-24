class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    if @artwork.save
      redirect_to artwork_path(@artwork)
    else
      render :new
    end
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :size, :type, :category, :price)
  end
end
