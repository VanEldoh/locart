class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @artwork = Artwork.find(params[:artwork_id])
    @booking.artwork = @artwork
    @booking.user = current_user
    @booking.status = "Pending"

    if @booking.save!
      redirect_to artwork_bookings_path(@artwork)
    else
      redirect_to artwork_path(@artwork)
    end
  end

  def index
    @booking_requests = Booking.select { |booking| booking.artwork.user == current_user }
    @bookings = Booking.where(user_id: current_user.id)
  end

  def edit
    @booking = Booking.find(params[:id])
    @artwork = Artwork.find(params[:artwork_id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to artwork_path(@artwork)
    else
      render artwork_path(@artwork)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :artwork_id, :photo)
  end
end
