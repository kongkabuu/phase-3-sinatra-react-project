require 'carrierwave'
require 'carrierwave/orm/activerecord'

class ImageUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    '../public/uploads'
  end
  def cache_dir
    "uploads/tmp"

  end
  def extension_whitelist
    %w[jpg jpeg gif png]
  end


end
