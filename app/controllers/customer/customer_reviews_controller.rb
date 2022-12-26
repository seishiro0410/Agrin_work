class Customer::CustomerReviewsController < ApplicationController
  def new
    @customer_review = CustomerReview.new
    @job_offer = JobOffer.find(params[:job_offer_id])
  end

  def create
    @customer_review = current_customer.customer_reviews.build(customer_review_params)
    @customer_review.customer_star = params[:score]
    @customer_review.job_offer_id = params[:job_offer_id]
    @customer_review.save
    redirect_to reservations_path
  end

  

  private

  def customer_review_params
    params.require(:customer_review).permit(:customer_id, :job_offer_id, :customer_star, :customer_comment)
  end
end
