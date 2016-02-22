class Landlord < ActiveRecord::Base
  has_many   :properties
  has_many   :comments
end