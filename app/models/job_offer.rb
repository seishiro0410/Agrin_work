class JobOffer < ApplicationRecord

  belongs_to :farmer
  has_many :reservations, dependent: :destroy
  has_many :customer_reviews, dependent: :destroy
  has_many :job_offer_reviews, dependent: :destroy
  has_one_attached :farmer_image

  enum area: { hokkaido: 0, tohoku: 1, kanto: 2, cyubu: 3, kinki: 4, cyugokushikoku: 5, kyusyuokinawa: 6 }
  enum job_form: { day: 0, short: 1 }
  enum job_status: { recruitment: true, stop: false }
  validates :job_status, inclusion: { in: ["recruitment", "stop"] }
end
