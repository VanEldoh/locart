class UsersController < ApplicationController
  def show
    @user = current_user
    @bookings = Artwork.where(user_id: params[:id])
  end
end
