class OffersController < ApplicationController


  def index
    @offers = Offer.all
  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  private
  def method_name

  end
  def offer_params
    params.require(:offer).permit(:title, :description, :skill)
  end
end
