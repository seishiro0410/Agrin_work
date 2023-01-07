class Farmer::FarmerReviewsController < ApplicationController
  def new
    @farmer_review = FarmerReview.new
    @job_offer = JobOffer.find(params[:job_offer_id])
    @customer = @job_offer.customers.find(params[:customer_id])
  end

  def create
    @job_offer = JobOffer.find(params[:job_offer_id])
    @farmer_review = @job_offer.farmer_reviews.build(farmer_review_params)
    @farmer_review.farmer_star = params[:score]
    @farmer_review.customer_id = farmer_review_params[:customer_id]

    @farmer_review.save!
    redirect_to farmer_job_offer_reservations_index_path
  end

  private

  def farmer_review_params
    params.require(:farmer_review).permit(:customer_id, :job_offer_id, :farmer_star, :farmer_comment)
  end
end
