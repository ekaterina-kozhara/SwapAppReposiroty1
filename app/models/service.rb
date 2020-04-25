class Service < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :category, optional: true
  # has_one_attached :image
  has_many :service_images

  has_many :favourites
  has_many :favourite_users, through: :favourites
  #validates :user_id, presence: true
end
