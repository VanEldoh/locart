class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @artworks = Artwork.all
  end

  def new
  end

  def create
    test
  end

  def show
  end
end
