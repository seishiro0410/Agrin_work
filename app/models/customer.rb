class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reservations, dependent: :destroy
  has_many :customer_reviews, dependent: :destroy
  has_many :farmer_reviews, dependent: :destroy

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true
  validates :telephone_number, presence: true

  has_one_attached :customers_image

  enum gender: { man: 0, woman: 1 }

  has_one_attached :customers_image

  def get_customers_image
    unless customers_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      customers_image.attach(io: File.open(file_path), filename: 'no_image.jpg', content_type: 'image/jpeg')
    end
    customers_image
  end
end
