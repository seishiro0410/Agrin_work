class CustomerReview < ApplicationRecord
  belongs_to :customer
  belongs_to :job_offer

  validates :customer_star, presence: true
  validates :customer_comment, presence: true
end
