class Admin::FarmerReviewsController < ApplicationController
  def index
    @farmer_reviews = FarmerReview.all
  end
end
