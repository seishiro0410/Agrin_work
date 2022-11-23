class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reservations, dependent: :destroy
  has_many :customer_reviews, dependent: :destroy
  has_many :farmer_reviews, dependent: :destroy
  has_one_attached :image

  enum gender: { man: 0, woman: 1 }
end
