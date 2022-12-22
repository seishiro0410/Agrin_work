class HomesController < ApplicationController
  def top
    @job_offers = JobOffer.all
  end

  def about
  end
end
