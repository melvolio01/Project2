class Comment < ActiveRecord::Base
  belongs_to   :user
  belongs_to   :landlord
  belongs_to   :property
end
