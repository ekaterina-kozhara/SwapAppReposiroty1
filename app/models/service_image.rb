class ServiceImage < ApplicationRecord
  belongs_to :service
  mount_uploader :image, ServiceCoverUploader
end
