class Customer::ReservationsController < ApplicationController
  before_action :authenticate_customer!
  before_action :correct_customer, only: [:show]
  
  def information
    @reservation = Reservation.new
    @job_offer = JobOffer.find(params[:job_offer_id])
  end

  def thanx
  end

  def create
    @reservation = Reservation.new(reservations_params)
    @reservation.customer_id = current_customer.id

    @reservation.save!
    redirect_to job_offer_reservations_thanx_path
  end

  def index
    @reservations = current_customer.reservations
  end

  def show
  end

  private
  
  def correct_customer
    @reservation = current_customer.reservations.find_by(id: params[:id])
    redirect_to root_path if !@reservation
  end

  def reservations_params
#    params.require(:reservation).permit(:job_offer_id)
    params.permit(:job_offer_id)
  end

end
