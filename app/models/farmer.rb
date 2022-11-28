class Farmer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :job_offers, dependent: :destroy
  has_one_attached :farmers_image

  def get_farmers_image
    unless farmers_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      farmers_image.attach(io: File.open(file_path), filename: 'no_image.jpg', content_type: 'image/jpeg')
    end
    farmers_image
  end
end
