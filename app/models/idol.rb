class Idol < ApplicationRecord
  mount_uploader :image, ImagesUploader
end
