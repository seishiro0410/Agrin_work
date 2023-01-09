class Customer::FarmerReviewsController < ApplicationController
  before_action :authenticate_customer!
  def index
    @farmer_reviews = current_customer.farmer_reviews
  end
end
