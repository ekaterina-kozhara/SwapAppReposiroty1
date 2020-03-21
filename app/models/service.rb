class Service < ApplicationRecord
  belongs_to :user#, optional: true
  belongs_to :category
  has_one_attached :image
  #validates :user_id, presence: true
end
