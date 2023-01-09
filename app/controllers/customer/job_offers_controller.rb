class Customer::JobOffersController < ApplicationController
  before_action :authenticate_customer!
  
  def index
    @job_offers = JobOffer.all
  end

  def show
    @job_offer = JobOffer.find(params[:id])
  end

  def search
    # @job_offer = params[:job_offer]
    # @job_offers = JobOffer.where('area LIKE ?', "%#{params[:area]}%")
    @job_offers = JobOffer.where(area: params[:area]).where(job_form: params[:job_form])

    # if @job_offer == "Area"
    #   @users = User.looks(params[:search], params[:word])
    # else
    #   @books = Book.looks(params[:search], params[:word])
    # end
  end

  private

  def job_offer_params
    params.require(:job_offer).permit(:farmer_id, :job_name, :job_content, :salary, :job_address, :job_postal_code, :day, :start_time, :job_time, :area, :job_form, :number_of_days, :comment, :job_status)
  end
end
