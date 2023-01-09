class Admin::CustomerReviewsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @customer_reviews = CustomerReview.all
  end

  def destroy
    @customer_review = CustomerReview.find(params[:id])
    @customer_review.destroy
    redirect_to admin_customer_reviews_path
  end

  private

  def customer_review_params
    params.require(:customer_review).permit(:customer_review_id, :customer_id, :job_offer_id, :customer_star, :customer_comment)
  end
end
