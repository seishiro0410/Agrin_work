class Farmer::JobOffersController < ApplicationController
  def new
    @job_offer = JobOffer.new
  end

  def create
    @job_offer = JobOffer.new(job_offer_params)
    @job_offer.farmer_id = current_farmer.id
    if params[:job_offer][:select_address] == "0"
    @job_offer.job_postal_code = current_farmer.postal_code
    @job_offer.job_address = current_farmer.address
    else params[:job_offer][:select_address] == "1"
    end

    @job_offer.save
    redirect_to farmer_job_offers_path(@job_offer.id)
  end

  def index
    @job_offers = JobOffer.all
    @farmer = current_farmer
  end

  def show
    @job_offer = JobOffer.find(params[:id])
    @farmer = current_farmer
  end

  def edit
  end

  def update
  end

  private

  def job_offer_params
    params.require(:job_offer).permit(:farmer_id, :job_name, :job_content, :salary, :job_address, :job_postal_code, :day, :start_time, :job_time, :area, :job_form, :comment, :job_status)
  end

end
