class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params_booking)
    @offer = Offer.find(params[:offer_id])
    @user = User.find(params[:user_id])
    @booking.offer = @offer
    @booking.user = @user
    @booking.save
  end

  private

  def params_booking
    params.require(:booking).permit(:start_date, :end_date)
  end

end
