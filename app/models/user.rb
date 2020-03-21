class User < ApplicationRecord
  has_many :services
  has_one_attached :image
  belongs_to :city 
end
