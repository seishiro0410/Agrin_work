class Farmer::CustomerReviewsController < ApplicationController
  before_action :authenticate_farmer!
  def index
    @job_offers = current_farmer.job_offers.includes(:farmer_reviews)
  end
end
