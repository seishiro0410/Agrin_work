class Admin::FarmerReviewsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @farmer_reviews = FarmerReview.all
  end

  def destroy
    @farmer_review = FarmerReview.find(params[:id])
    @farmer_review.destroy
    redirect_to admin_farmer_reviews_path
  end

  private

  def customer_review_params
    params.require(:farmer_review).permit(:farmer_review_id, :customer_id, :job_offer_id, :farmer_star, :farmer_comment)
  end
end
