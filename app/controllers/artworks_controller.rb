class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @artworks = ArtworkPolicy::Scope.new(current_user, Artwork).index

    @artworks = Artwork.where.not(latitude: nil, longitude: nil)

    @markers = @artworks.map do |artwork|
      {
        lat: artwork.latitude,
        lng: artwork.longitude
      }
    end
  end

  def new
    @artwork = Artwork.new
  end

  def all
    @artworks = policy_scope(Artwork)
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user = current_user
    if @artwork.save!
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
    params.require(:artwork).permit(:title, :size, :art_type, :category, :price, :photo, :address, :latitude, :longitude)
  end
end
