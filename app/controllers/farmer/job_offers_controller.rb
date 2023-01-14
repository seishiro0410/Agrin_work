class Farmer::JobOffersController < ApplicationController
  before_action :authenticate_farmer!
  before_action :correct_farmer, only: [:show, :edit, :update, :destroy]

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

    if @job_offer.save
      redirect_to farmer_job_offers_path(@job_offer.id)
    else
      render :new
    end
  end

  def index
    @farmer = current_farmer
    @job_offers = @farmer.job_offers
  end

  def show
    @farmer = current_farmer
  end

  def edit
  end

  def update
    if @job_offer.update(job_offer_params)
      redirect_to farmer_job_offers_path(@job_offer.id)
    else
      render :edit
    end
  end

  def destroy
    @job_offer.destroy
    redirect_to farmer_job_offers_path
  end

  private

  def correct_farmer
    @job_offer = current_farmer.job_offers.find_by(id: params[:id])
    redirect_to root_path if !@job_offer
  end

  def job_offer_params
    params.require(:job_offer).permit(:farmer_id, :job_name, :job_content, :salary, :job_address, :job_postal_code, :day, :start_time, :job_time, :area, :job_form, :comment, :job_status, :number_of_days)
  end

end
