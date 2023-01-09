class Admin::FarmersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @farmers = Farmer.all
  end
end
