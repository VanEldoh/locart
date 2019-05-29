class UsersController < ApplicationController
  def show
    @user = current_user
    @bookings = Booking.where(user_id: current_user.id)
    @booking_requests = Booking.select { |booking| booking.artwork.user == current_user }
  end
end
