class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @artworks = ArtworkPolicy::Scope.new(current_user, Artwork).index
  end

  def new
    @artwork = Artwork.new
  end

  def all
    @artworks = policy_scope(Artwork).where.not(latitude: nil, longitude: nil)
    if !params[:art_type].nil? && !params[:art_type].empty? && params[:art_type] != "All types"
      @artworks = @artworks.where(art_type: params[:art_type])
    end

    if !params[:category].nil? && !params[:category].nil? && params[:category] != "All Categories"
      @artworks = @artworks.where(category: params[:category])
    end

    if !params[:size].nil? && !params[:size].nil? && params[:size] != "All sizes"
      @artworks = @artworks.where(size: params[:size])
    end

    @artworks = @artworks.near(params[:address], 10) if !params[:address].nil? && !params[:address].empty?

    @markers = @artworks.map do |artwork|
      {
        lat: artwork.latitude,
        lng: artwork.longitude
      }
    end
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
    @booking = Booking.new
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :size, :art_type, :category, :price, :photo, :address, :latitude, :longitude)
  end
end
