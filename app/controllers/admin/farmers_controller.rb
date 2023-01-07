class Admin::FarmersController < ApplicationController
  def index
    @farmers = Farmer.all
  end
end
