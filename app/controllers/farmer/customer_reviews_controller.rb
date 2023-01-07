class Farmer::CustomerReviewsController < ApplicationController
  def index
    @job_offers = current_farmer.job_offers.includes(:farmer_reviews)
  end


end
