require 'carrierwave/orm/activerecord'
require_relative '../uploaders/property_image_uploader'


class Property < ActiveRecord::Base
  belongs_to  :landlord
  has_many    :comments


  mount_uploader :property_image, PropertyImageUploader 

end