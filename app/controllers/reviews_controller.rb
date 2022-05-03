class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params_review)
    @offer = Offer.find(params[:offer_id])
    @review.offer = @offer
    @review.save
  end

  private

  def params_review
    params.require(:offer).permit(:rating, :content)
  end
end
