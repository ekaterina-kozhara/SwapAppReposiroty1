class Favourite < ApplicationRecord
  belongs_to :user
  belongs_to :service
  #validates_uniqueness_of :user_id, :scope => [:service_id]
end
