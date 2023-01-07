class Admin::CustomerReviewsController < ApplicationController
  def index
    @customer_reviews = CustomerReview.all
  end
end
