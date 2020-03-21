class Category < ApplicationRecord
  has_many :services
  #validates :name, uniqueness: true
end
