class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @artworks = ArtworkPolicy::Scope.new(current_user, Artwork).index
  end

  def new
    @artwork = Artwork.new
  end

  def all
    @artworks = policy_scope(Artwork).where.not(latitude: nil, longitude: nil)

    if !params[:artwork].nil? && !params[:artwork][:type].empty?
      @artworks = @artworks.where(art_type: params[:artwork][:type])
    end

    if !params[:artwork].nil? && !params[:artwork][:category].empty?
      @artworks = @artworks.where(category: params[:artwork][:category])
    end

    if !params[:artwork].nil? && !params[:artwork][:size].empty?
      @artworks = @artworks.where(size: params[:artwork][:size])
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
