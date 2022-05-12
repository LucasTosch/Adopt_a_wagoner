class OffersController < ApplicationController
  def index
    if params[:query].present?
      @offers = Offer.where("skill ILIKE ?", "%#{params[:query]}%")
    else
      @offers = Offer.all
    end
  end

  def show
    @offer = Offer.find(params[:id])
  end
end
