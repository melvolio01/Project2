require 'carrierwave/orm/activerecord'
require_relative '../uploaders/profile_pic_uploader'

class User < ActiveRecord::Base
  include BCrypt

  validates :email, presence: true,
    uniqueness: true
  validates :username, presence: true,
    uniqueness: true
  validates :password, presence: true
  has_secure_password

  mount_uploader :profile_pic,
    ProfilePicUploader 


  has_many :comments
end