
require_relative "../uploders/image_uploder"

class Article < ActiveRecord::Base
  attr_accessor :image_path
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
mount_uploader :image_path, ImageUploader

end
