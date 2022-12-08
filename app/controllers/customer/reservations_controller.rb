class Customer::ReservationsController < ApplicationController
  def information
    @reservation = Reservation.new
    @job_offer = JobOffer.find(params[:job_offer_id])
  end

  def thanx
  end

  def create
    @reservation = Reservation.new(reservations_params)
    @reservation.customer_id = current_customer.id

    p @reservation

    @reservation.save!
    redirect_to job_offer_reservations_thanx_path
  end

  def index
    @reservations = current_customer.reservations
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private

  def reservations_params
#    params.require(:reservation).permit(:job_offer_id)
    params.permit(:job_offer_id)
  end

end
