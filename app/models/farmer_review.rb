class FarmerReview < ApplicationRecord
  belongs_to :customer
  belongs_to :job_offer

  validates :farmer_star, presence: true
  validates :farmer_comment, presence: true
end
