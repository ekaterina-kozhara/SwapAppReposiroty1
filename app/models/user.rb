class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :services
  has_one_attached :image
  belongs_to :city

  has_many :favourites
  has_many :favourite_services, through: :favourites, source: 'service'
end
