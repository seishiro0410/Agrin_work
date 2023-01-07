class Customer::FarmerReviewsController < ApplicationController
  def index
    @farmer_reviews = current_customer.farmer_reviews
  end
end
