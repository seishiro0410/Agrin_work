class Reservation < ApplicationRecord
  belongs_to :customer
  belongs_to :job_offer
end
