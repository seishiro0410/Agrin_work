class Farmer::ReservationsController < ApplicationController
  def index
    @job_offer = JobOffer.find(params[:job_offer_id])
    @customers = @job_offer.customers
    
    puts "test"
    @customers.each do |customer|
      puts customer.email
      puts customer.id
    end
    
    puts "test2"
    @job_offer.farmer_reviews.each do |farmer_review|
      puts farmer_review.customer_id
      puts farmer_review.farmer_comment
    end
    
  end
end
