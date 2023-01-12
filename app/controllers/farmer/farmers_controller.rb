class Farmer::FarmersController < ApplicationController
  before_action :authenticate_farmer!
  def show
    @farmer = current_farmer
  end

  def edit
    @farmer = current_farmer
  end

  def update
    @farmer = current_farmer
    if @farmer.update(farmer_params)
      redirect_to farmer_farmers_mypage_path
    else
      render :edit
    end
  end

  private

  def farmer_params
    params.require(:farmer).permit(:name, :name_kana, :email, :postal_code, :address, :telephone_number, :farmers_image)
  end
end
