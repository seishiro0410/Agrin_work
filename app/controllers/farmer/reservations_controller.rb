class Farmer::ReservationsController < ApplicationController
  def index
    job_offer = JobOffer.find(params[:job_offer_id])
    @customers = job_offer.customers
  end
end
