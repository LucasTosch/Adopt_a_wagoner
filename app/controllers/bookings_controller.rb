class BookingsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def new
    @user = current_user
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new
  end

  def create
    @user = current_user
    @offer = Offer.find(params[:offer_id])
    @booking = Booking.new(params_booking)
    @booking.offer = @offer
    @booking.user = @user
    @booking.save
    redirect_to user_path(@user)
  end

  private

  def params_booking
    params.require(:booking).permit(:start_date, :end_date, :user_id, :offer_id)
  end
end
