class ArtworksController < ApplicationController
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
