class Customer::JobOffersController < ApplicationController
  def index
    @job_offers = JobOffer.all
  end

  def show
    @job_offer = JobOffer.find(params[:id])
  end

  private

  def job_offer_params
    params.require(:job_offer).permit(:farmer_id, :job_name, :job_content, :salary, :job_address, :job_postal_code, :day, :start_time, :job_time, :area, :job_form, :comment, :job_status)
  end
end
