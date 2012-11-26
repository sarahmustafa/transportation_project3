class Vehicle < ActiveRecord::Base

  attr_accessible :color, :description, :license_plate, :make, :model, :image, :image_cache
  mount_uploader :image, ImageUploader
  validates :color, :description, :license_plate, :make, :model, :presence => true
end
