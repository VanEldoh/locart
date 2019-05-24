class BookingPolicy < ApplicationPolicy
  def create?
    return true
  end
end
#  attr_reader :user, :booking

#   def initialize(user, booking)
#     @user = user
#     @booking = booking
#   end

#   def update?
#     user.admin? or not booking.published?
#   end
# end
