class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @offer = Offer.find(params[:offer_id])
    @review.offer = @offer
  end

  def create
    @review = Review.new(params_review)
    @offer = Offer.find(params[:offer_id])
    @review.offer = @offer
    @review.user = current_user
    if @review.save
      redirect_to(@offer)
    else
      render :new
    end
  end

  private

  def params_review
    params.require(:review).permit(:rating, :content)
  end
end
